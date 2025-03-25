FROM ubuntu

LABEL MAINTANER="Evertonildo Maia"

ENV NPM_VERSION=8 ENVIRONMENT=PROD 
RUN apt-get update && apt-get install -y git nano npm

WORKDIR /app

RUN npm build

COPY . .

ADD ./files/tar.gz ./

