# Uses the openjdk docker image (with the 11 tag) as the base
FROM openjdk:11
# The working directory of a Docker container
WORKDIR /app
# The value below can be copied and pasted from IntelliJ after creating a remote run config
ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,address=*:8000,server=y,suspend=n
# Copies the jar from where it was generated to the specified working directory of the container
COPY target/remote-debugging-1.0-SNAPSHOT.jar  remote-debugging.jar
# Tells Docker what to run when the container is started
ENTRYPOINT ["java", "-cp", "remote-debugging.jar", "App"]
# The port that the Docker container listens to
# The EXPOSE instruction does not actually publish the port.
# It functions as a type of documentation between the person who builds the image and the person who runs the container, about which ports are intended to be published.
EXPOSE 8000
