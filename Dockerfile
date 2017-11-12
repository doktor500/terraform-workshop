FROM openjdk:8

COPY ./build/libs/app.jar /opt/apps/
WORKDIR /opt/apps/
CMD java -jar app.jar
