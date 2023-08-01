FROM node

# Create app directory and use it as the working directory
WORKDIR /src

# Copy package.json to the working directory
COPY package.json /src

# Install app dependencies
RUN npm install

# Bundle app source
COPY . /src

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the app when the container launches
CMD ["node", "server.js"]