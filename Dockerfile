FROM frolvlad/alpine-java:jdk8-slim
RUN apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io
COPY build/libs/calculator-0.0.1-SNAPSHOT.jar app.jar 
ENTRYPOINT ["java", "-jar", "app.jar"]