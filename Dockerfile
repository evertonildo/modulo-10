FROM ubuntu

LABEL MAINTANER="Evertonildo Maia"

ENV NPM_VERSION=8 ENVIRONMENT=PROD 
RUN apt-get update && apt-get install -y git nano npm pm2

WORKDIR /app

RUN npm build

COPY . .

ADD ./files/tar.gz ./

RUN useradd joao

USER joao

# CMD [ "pm2", "status" ]
ENTRYPOINT [ "pm2", "status" ]

EXPOSE 80


