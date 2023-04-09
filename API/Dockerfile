FROM eclipse-temurin:20-jdk-alpine
LABEL Name=localyak-api Version=0.0.1
VOLUME /tmp
COPY /API/out/artifacts/API_jar/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
