# Use official Node.js LTS image as the base image
FROM node:lts-alpine

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

# Install a server
RUN npm install -g serve

# Expose the port
EXPOSE 5000

# Run the app
CMD ["serve", "-s", "dist", "-p", "5000"]
