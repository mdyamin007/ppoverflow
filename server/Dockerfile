FROM node:18.18.2-alpine3.18 as build

ENV NODE_ENV production

WORKDIR /app

COPY . .
RUN npm install

# RUN npm install pm2 -g
# CMD pm2 start process.yml && tail -f /dev/null

EXPOSE 5000
CMD [ "node", "index.js" ]
