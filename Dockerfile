# syntax=docker/dockerfile:1
FROM ubuntu:latest

# RUN apt update -y && apt install openssl -y

COPY create-infra-apache.sh .
RUN chmod +x create-infra-apache.sh

ENTRYPOINT ["./create-infra-apache.sh"]