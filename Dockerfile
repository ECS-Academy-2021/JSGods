FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm i
COPY . .
EXPOSE 3000
ENTRYPOINT [ "node", "app.js" ]
CMD [ "--help" ]