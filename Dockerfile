# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Gradle wrapper and other necessary files
COPY gradlew .
COPY gradle /app/gradle

# Copy the rest of the application code
COPY . .

# Make the Gradle wrapper executable
RUN chmod +x gradlew

# Build the application
RUN ./gradlew build -x test

COPY entrypoint.sh /app/
# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

EXPOSE 8080
# # Run the jar file
# Set the entrypoint to the script
ENTRYPOINT ["/app/entrypoint.sh"]
