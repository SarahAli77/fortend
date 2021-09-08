FROM node:10-alpine
WORKDIR /app
COPY index.js .
COPY package-lock.json .
COPY package.json .
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "node", "index.js" ]
