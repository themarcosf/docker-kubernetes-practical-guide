FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json .
RUN npm install

# Bundle app source
COPY . .

# Volume for node_modules
VOLUME [ "/usr/src/app/node_modules" ]

# Expose port 3000
EXPOSE 3000

# Run the app
CMD [ "npm", "start" ]

# docker instrusctions
# create network: docker network create goals-net
# create mongodb container with auth and persistent storage (named volume OR bind mount): docker run -d --rm --name mongodb -v data:/data/db -e MONGO_INITDB_ROOT_USERNAME=goals-app -e MONGO_INITDB_ROOT_PASSWORD=123456 --network=goals-net mongo
# build backend image: docker build -t backend .
# run backend image with named volume and bind mount: docker run -d --rm --name backend -v logs:/usr/src/app/logs -v $(pwd):/usr/src/app:ro -p 80:80 -e MONGO_USER=goals-app -e MONGO_PASS=123456 --network=goals-net backend
# build frontend image: docker build -t frontend .
# run frontend image in interactive mode, with bind mount and exposing port: docker run -d --rm --name frontend -v $(pwd)/src:/usr/src/app/src:ro -it -p 3000:3000 frontend