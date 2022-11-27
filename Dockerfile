FROM openjdk:17
WORKDIR /proj
COPY ./my-app/target/*.jar /proj/
RUN useradd sahar
USER sahar
CMD sleep 500
