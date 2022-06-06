FROM openjdk:8
WORKDIR '/app'
ADD target/confusion-0.0.1-SNAPSHOT.jar confusion-0.0.1-SNAPSHOT.jar
EXPOSE 8086
COPY . .
ENTRYPOINT ["java", "-jar", "confusion-0.0.1-SNAPSHOT.jar"]
