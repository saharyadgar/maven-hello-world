FROM ubuntu:22.04 as base
RUN useradd sahar

FROM openjdk:8-jdk-alpine
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
USER sahar
CMD sleep 500
