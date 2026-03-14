# Use an official Node.js runtime as a parent image
FROM node:18
# Set the working directory
WORKDIR /usr/src/app
# Copy package.json and install dependencies
COPY package.json ./
RUN npm install
# Copy the rest of the application code
COPY . .
# Define the command to run the app
CMD ["node", "app.js"]
