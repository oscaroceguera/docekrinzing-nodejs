# Define what image we want to build
FROM node:boron

# Create a directory to hold the application code inside the image
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app
RUN npm install

# To bundle your app's source code inside the Docker image, use the COPY instruction:
# Bundle app source
COPY . /usr/src/app

#Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 8080

# Define the command to run you app using CMD, which define your runtime
CMD ["npm", "start"]
