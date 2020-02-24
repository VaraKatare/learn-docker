# Use an existing docker image as a base
FROM node:alpine

# Download and install a dependency
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Tell the image what to do when it starts
# as a containers
CMD [ "npm", "start" ]