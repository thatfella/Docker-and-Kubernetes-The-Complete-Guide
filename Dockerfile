#Specify base image
FROM node:alpine

#Set WorkDir 
WORKDIR '/number-of-visits/app'

#Copy and install dependencies
COPY package.json .
RUN npm install
COPY . .

#Default command
CMD ["npm", "start"]