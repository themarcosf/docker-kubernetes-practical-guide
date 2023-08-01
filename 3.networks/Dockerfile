FROM node:latest

# Create source directory
WORKDIR /src

# Install dependencies
COPY package.json /src
RUN npm install

# Bundle source
COPY . /src

# Set default port
ARG DEFAULT_PORT=80

# Set default host for localhost IP address
# ARG DEFAULT_HOST=host.docker.internal

# Set default host for isolated container IP address
# ARG DEFAULT_HOST=172.17.0.2

# Set default host for network container IP address
ARG DEFAULT_HOST=mongodb

# Set environment variables
ENV PORT $DEFAULT_PORT
ENV HOST $DEFAULT_HOST

# Expose port
EXPOSE $PORT

# Run app
CMD ["node", "app.js"]