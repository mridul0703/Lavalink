FROM openjdk:17-jdk-slim

WORKDIR /app

COPY Lavalink.jar Lavalink.jar
COPY application.yml application.yml

EXPOSE 2333

CMD ["java", "-Xmx1G", "-jar", "Lavalink.jar"]
