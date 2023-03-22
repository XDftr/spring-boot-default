FROM openjdk:17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . .

# Run the command to build the application
RUN ./gradlew clean build

# Expose the port that the application will run on
EXPOSE 8085

# Start the application
CMD ["java", "-jar", "build/libs/default-0.0.1.jar"]
