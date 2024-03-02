# Use an OpenJDK 8 image with Alpine Linux as the base
FROM openjdk:8-jre-alpine

# Expose port 8080 for the application. This is the port the application will run on inside the container.
EXPOSE 8080

# Copy the built application jar file from the host machine into the image file system.
# This jar is located in the build/libs directory of the project on the host,
# and is copied to /usr/app/ inside the Docker image.
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Set the working directory inside the container to /usr/app.
# This is where the command will be executed from within the container.
WORKDIR /usr/app

# Define the command to run the application.
# This tells Docker to execute the Java application using the jar file when the container starts.
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

