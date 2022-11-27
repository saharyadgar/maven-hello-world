FROM openjdk:8-jdk-alpine
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
CMD sleep 500
