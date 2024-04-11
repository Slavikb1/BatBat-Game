FROM maven:3.8.6-jdk-11 as maven

COPY . .
RUN mvn package


FROM openjdk:23-ea-11-jdk-slim

ARG VERSION
ENV APP="batbatgame.jar"
COPY --from=maven /target/batbatgame-$VERSION.jar .
CMD java -jar $APP
