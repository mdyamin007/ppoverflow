ARG PUBLIC_API_ENDPOINT

FROM node:18.18.2-alpine3.18 as build
WORKDIR /usr/app
COPY . /usr/app
RUN npm ci
RUN npm run build

FROM nginx:alpine3.18
ARG PUBLIC_API_ENDPOINT
EXPOSE 80
COPY --from=build /usr/app/build /usr/share/nginx/html
COPY ./set_variable.sh /usr/share/nginx/html/set_variable.sh

RUN chmod +x /usr/share/nginx/html/set_variable.sh && /usr/share/nginx/html/set_variable.sh
