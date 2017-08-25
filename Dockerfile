FROM node:8.4
MAINTAINER Thananon Ngoenthaoworn

ENV NODE_ENV production

WORKDIR /usr/app

COPY index.js /usr/app/
COPY react-app/build/ /usr/app/
#COPY react-app/package.json /usr/app/
#COPY react-app/src/ /usr/app/
COPY react-app/public/ /usr/app/

#CMD npm start 

EXPOSE ${PORT:-3000}
