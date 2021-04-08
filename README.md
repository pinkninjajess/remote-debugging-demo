**Credit:**
Example code from tutorial: [Remote debugging a Java Application running in Docker container with Intellij Idea](https://medium.com/swlh/remote-debugging-a-java-application-running-in-docker-container-with-intellij-idea-efe54cd77f02
)

With modifications and explanations made to the Dockerfile

Helpful Dockerfile explanations:
- Article: [How to Expose Ports in Docker](https://www.whitesourcesoftware.com/free-developer-tools/blog/docker-expose-port/)
- [Official documentation](https://docs.docker.com/engine/reference/builder/)

Docker Commands:
- docker build -t remote-debugger:demo .
- docker run -d -p 8000:8000 remote-debugger:demo

Helpful articles:
- [8 Debugging tips for IntelliJ Users](https://lightrun.com/debugging/eight-debugging-tips-for-intellijidea-users-you-never-knew-existed/)
- [Remote Debugging a Java App](https://www.baeldung.com/java-application-remote-debugging)
