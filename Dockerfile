FROM node:7-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install && npm cache clean
COPY . /usr/src/app

CMD [ "./bin/itunes-connect-analytics-api" ]
