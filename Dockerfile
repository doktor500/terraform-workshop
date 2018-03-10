FROM openjdk:8

COPY ./build/libs/terraform-workshop-app.jar /opt/apps/
WORKDIR /opt/apps/
CMD java -jar terraform-workshop-app.jar
