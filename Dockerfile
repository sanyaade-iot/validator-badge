FROM java:8

WORKDIR /validator
COPY target/lib/jetty-runner* /validator/jetty-runner.jar
COPY bin/run.sh /validator/
ADD target/swagger-validator-1.0.3 /validator/webapp

RUN apt-get update

EXPOSE 8080
CMD ["bash", "/validator/run.sh"]
