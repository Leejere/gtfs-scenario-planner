# Use official Node.js LTS image as the base image
FROM node:lts-alpine as build-stage

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the remaining files
COPY . .

# Build the app
RUN npm run build

# --- FastAPI + Nginx ---

FROM python:3.11
RUN apt-get update

# Install nginx
RUN apt-get -y install nginx

# Set the working directory for the FastAPI app
WORKDIR /app

# Copy the FastAPI app files
COPY api/ ./api

# Install Python packages
RUN apt-get install -y gdal-bin libgdal-dev g++
RUN python -m pip install --upgrade pip && \
    python -m pip install -r api/requirements.txt

# Copy the built frontend files from the previous stage
COPY --from=build-stage /app/dist /app/dist

# Copy the nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the ports
EXPOSE 8080

# Start nginx and FastAPI app
CMD ["sh", "-c", "nginx && uvicorn api.main:app --host 0.0.0.0 --port 8000"]

