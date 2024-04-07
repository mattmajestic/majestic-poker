# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/poker-react

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install any dependencies
RUN yarn install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
CMD ["yarn", "start"]
