FROM node:8.9-alpine
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install  --silent
COPY . .
RUN npm run build 
EXPOSE 3000
CMD npm start