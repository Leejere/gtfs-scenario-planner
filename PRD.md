# GTFS Scenario Planner - Product Requirements Document (PRD)

## A Simple Solution for Transit Planners

Transit planners are constantly seeking efficient ways to handle [GTFS data formats](https://developers.google.com/transit/gtfs) and perform scenario planning for transit systems. However, they often face pain points, such as the difficulty in dealing with the GTFS format and calculating performance outcomes using network analysis. In many cases, transit planners either need extensive coding knowledge or must rely on proprietary products like ArcGIS, which may not provide the best user experience. Moreover, translating modifications or updates into an updated GTFS or performance outcomes has been a challenging task. The GTFS Scenario Planner aims to address these issues by providing a one-stop, simple, web-based solution tailored to transit planners.

## Product Features

1. GTFS Data Import and Visualization: Users can easily import GTFS data files or load pre-stored GTFS data into the system. The tool will display routes, stops, frequencies, and other transit elements on an interactive map, and users can filter the displayed data to focus on specific routes, stops, or transit modes.

2. Network Calculation and Route Analysis: The tool calculates the optimal route and time needed to travel between a selected point A and point B at a given time. It displays the calculated route on the map, along with detailed information such as travel time, transfers, and waiting times.

3. Transit Accessibility Assessment: Users can calculate transit sheds (areas accessible within a specific time) for any location. The tool will visualize transit sheds on the map and provide analysis of accessibility in terms of transit.

4. Scenario Planning and Evaluation: The tool allows users to add, remove, or modify routes and stops. Users can adjust transit frequencies, capacities, and speeds to explore different scenarios. It recalculates network and accessibility analysis for the modified scenarios, helping users evaluate their performance.

5. GTFS Data Export and Integration: When users are satisfied with a scenario, they can export the updated GTFS data to integrate their changes with existing data systems and APIs.

By addressing the unique needs of transit planners, the GTFS Scenario Planner offers an all-in-one solution for handling GTFS data formats, performing scenario planning, and analyzing transit systems. With its user-friendly interface and powerful features, this web app simplifies the planning process and enables transit planners to make data-driven decisions for improved transit systems.