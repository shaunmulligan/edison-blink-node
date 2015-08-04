FROM resin/edison-node:latest
# Enable systemd
ENV INITSYSTEM on

WORKDIR /usr/src/app

# Copy package.json to root in container.
COPY package.json .

# Install node modules
RUN npm install

# Copy the node.js source from app into /usr/src/app in our container
COPY /app .


CMD ["npm start"]
