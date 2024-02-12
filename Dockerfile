# Use Node 18 Hydrogen as parent image
FROM node:18

# Change the working directory on the Docker image to /app
WORKDIR /node-app

# Copy package.json and package-lock.json to the /app directory
COPY package.json package-lock.json ./

# Install dependencies
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Copy the rest of project files into this image
COPY ./ /node-app

# Expose application port
EXPOSE 3000

# Start the application
CMD node .
