# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the Node.js application will run
EXPOSE 3000

# Command to start the Node.js application
CMD ["node", "server.js"]
```

Dockerfile for MongoDB Server:
```Dockerfile
# Use the official MongoDB image as the base image
FROM mongo:latest

# Expose the default MongoDB port
EXPOSE 27017

# Command to start the MongoDB server
CMD ["mongod"]