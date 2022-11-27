FROM ubuntu:22.04 as base
RUN useradd sahar && echo -e "v3rystrongpassword" | passwd sahar

FROM openjdk:8-jdk-alpine
COPY --from=base /etc/passwd /etc/passwd
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
USER sahar
CMD sleep 500
