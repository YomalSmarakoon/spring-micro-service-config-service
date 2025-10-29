# Use an official lightweight JDK image
FROM eclipse-temurin:17-jre

# Set a working directory inside the container
WORKDIR /app

# Copy the built jar into the container
COPY target/configserver-0.0.1-SNAPSHOT.jar app.jar

# ENV JAVA_TOOL_OPTIONS="-Dmanagement.metrics.enable.system=false"

# Expose the port your config server runs on
EXPOSE 8071

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
# ENTRYPOINT ["java", "-Dmanagement.metrics.enable.process.processor=false", "-Dmanagement.metrics.enable.system=false", "-jar", "app.jar"]