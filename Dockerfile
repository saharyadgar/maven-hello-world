FROM ubuntu:22.04
WORKDIR /proj
RUN useradd sahar
USER sahar
CMD sleep 500
