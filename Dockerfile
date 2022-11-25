FROM openjdk:17
WORKDIR /proj
COPY ./my-app/target/my-app-1.0.0.jar /proj/
RUN useradd sahar
USER sahar
CMD sleep 500
