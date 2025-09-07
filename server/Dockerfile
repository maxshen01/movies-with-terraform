FROM node:16
WORKDIR /movies_app

COPY package*.json /movies_app
RUN npm install

COPY . /movies_app

ENV PORT=3000
ENV DB_USER=postgres
ENV DB_HOST=movies-db
ENV DB_NAME=movies
ENV DB_PASSWORD=lafosse
ENV DB_PORT=5432

EXPOSE 3000

CMD [ "node", "index.js" ]