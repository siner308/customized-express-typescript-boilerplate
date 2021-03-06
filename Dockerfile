FROM node:10.18.1

# Create work directory
WORKDIR /usr/src/app

# Copy app source to work directory
COPY . /usr/src/app

# Install app dependencies
RUN yarn install

# Build app
RUN npm start build

# Run app
ENTRYPOINT ["npm", "start"]

