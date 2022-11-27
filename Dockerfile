FROM ubuntu:22.04 as base
RUN useradd sahar && passwd -d sahar

FROM openjdk:8-jdk-alpine
COPY --from=base /etc/passwd /etc/passwd
USER sahar
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
CMD sleep 500
