#Specify base image
FROM alpine

#Set the working directory # equals mkdir /usr/app ,cd /usr/app
WORKDIR /usr/app

#Install Redis in Alpine #alphine package mngr apk, add to install,update latest version
RUN apk add --update redis

#Start the redis-server
CMD ["redis-server"]

#File is to create an image