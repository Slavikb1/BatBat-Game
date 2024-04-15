FROM maven:3.8.6-jdk-11 as maven

COPY . .
RUN mvn package


FROM openjdk:23-ea-11-jdk-slim

USER batbatuser

ARG VERSION
ENV APP="batbatgame.jar"
COPY --from=maven /target/batbatgame.jar .
CMD java -jar $APP
