FROM node:10.18.1-alpine AS build

RUN \
  apk add --no-cache python make g++ && \
  apk add vips-dev fftw-dev --update-cache \
  --repository http://dl-3.alpinelinux.org/alpine/edge/community \
  --repository http://dl-3.alpinelinux.org/alpine/edge/main \
  && rm -fR /var/cache/apk/*

RUN npm install -g gatsby-cli

WORKDIR /app
COPY ./package.json .
COPY ./yarn.lock .

RUN yarn install && yarn cache clean
COPY . .

FROM socialengine/nginx-spa
COPY --from=build /app/public /app

EXPOSE 80
CMD ["nginx"]
