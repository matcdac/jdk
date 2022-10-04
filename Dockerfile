

FROM ubuntu:latest

#FROM alpine:latest
#FROM bash:latest


RUN echo "Docker Image for Building the JDK"


## Install bash

#RUN apk update

#RUN apk upgrade

#RUN apk upgrade -y

#RUN apk add bash

#RUN apk add --update bash


## Update

RUN apt update -y

RUN apt upgrade -y


## Copy the content inside Docker Image

RUN pwd
RUN ls -lash

RUN mkdir space
RUN ls -lash

WORKDIR space
RUN pwd
RUN ls -lash

RUN mkdir jdk
RUN pwd
RUN ls -lash

WORKDIR jdk
RUN pwd
RUN ls -lash

COPY . .

RUN ls -lash


## Official JDK Documented Steps

RUN bash configure

#RUN sh configure

RUN make images

RUN ./build/*/images/jdk/bin/java -version

RUN make run-test-tier1

