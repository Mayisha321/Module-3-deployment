# Use Node.js image
FROM node:18

# Create app directory 

WORKDIR /home/ubuntu/expressjs_project/Module-3-deployment/app

# Install app dependencies 
#Specifies the base image to use, which is the official **Node.js v18** image from Docker Hub.
#- This image comes with Node.js and npm pre-installed.

COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
#Informs Docker that the container will listen on port 3000.

EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]

