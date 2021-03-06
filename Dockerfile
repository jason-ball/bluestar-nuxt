FROM node:alpine as build

# ENV NODE_ENV production
ENV HOST "0.0.0.0"
ARG BASE_URL

WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
COPY . /usr/src/app
RUN npm install
RUN npm run generate

EXPOSE 3000

CMD npm run start

FROM nginx:latest

COPY --from=build /usr/src/app/dist /usr/share/nginx/html/