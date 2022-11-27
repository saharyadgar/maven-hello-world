FROM ubuntu:22.04 as base
RUN useradd sahar && echo 'sahar:test' | chpasswd

FROM openjdk:8-alpine
COPY --from=base /etc/passwd /etc/passwd
USER sahar
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
CMD sleep 500
