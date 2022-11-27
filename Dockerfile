FROM openjdk:8
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
RUN useradd sahar
USER sahar
CMD sleep 500
