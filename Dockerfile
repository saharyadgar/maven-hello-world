FROM openjdk:8-alpine
RUN adduser -D sahar
USER sahar
WORKDIR /proj
COPY ./my-app/target/my-app* /proj/
CMD sleep 500
#CMD java -jar my-app*
