FROM node:13-alpine

RUN mkdir -p /home/app

COPY ./app /home/app


WORKDIR /home/app #\#


RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

