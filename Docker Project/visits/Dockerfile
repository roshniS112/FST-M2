#Specify base image
FROM node:18-alpine

#Set the working directory
WORKDIR /usr/app

#copy package.json
COPY package.json ./

#Install dependencies
RUN npm install

#copy rest of the files
COPY ./ ./

#Start web server
CMD ["npm","start"]

