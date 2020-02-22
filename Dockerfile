FROM node:10.18.1-alpine AS build

RUN npm install -g gatsby-cli

RUN \
  apk add --no-cache python make g++ && \
  apk add vips-dev fftw-dev --update-cache \
  --repository http://dl-3.alpinelinux.org/alpine/edge/community \
  --repository http://dl-3.alpinelinux.org/alpine/edge/main \
  && rm -fR /var/cache/apk/*

WORKDIR /app
COPY . .
RUN yarn install && yarn cache clean
RUN yarn build

FROM socialengine/nginx-spa
COPY --from=build /app/public /app

EXPOSE 80
CMD ["nginx"]
