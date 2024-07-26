#!/bin/sh

# Start the Spring Boot application
java -jar build/libs/dockerWebApp-0.0.1.jar

# Keep the container running
tail -f /dev/null
