FROM node:16-alpine
# Create app directory
WORKDIR /src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY . .

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev
# Bundle app source
RUN npm run build
EXPOSE 3000
CMD [ "npm", "start" ]