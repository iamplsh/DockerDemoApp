# DockerDemoApp
- Containerized spring application to run hello world on server

## Docker file steps followed
- Used an official OpenJDK runtime as a parent image
- Set the working directory in the container
- Copied the Gradle wrapper and other necessary files
- Made the Gradle wrapper executable
- Build the application
- expose necessary ports
- Run the jar file

## Project setup instructions
- clone the project
- cd into project directory
- build the docker image using command
'''bash
docker build -t docker-web-app:latest .
'''
- run the container
'''bash
docker run -p 8080:8080 docker-web-app:latest
'''


## Author
Palash Kadam - G23AI2048