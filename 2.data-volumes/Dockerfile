FROM node:latest

# Create app directory
WORKDIR /src

# Install app dependencies
COPY package.json /src
RUN npm install

# Bundle app source
COPY . /src

# Set default port
ARG DEFAULT_PORT=80

# Set environment variables
ENV PORT $DEFAULT_PORT

# Expose port
EXPOSE $PORT

# Run app
CMD ["npm", "start"]