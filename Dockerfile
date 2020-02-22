FROM node:10.18.1-alpine AS build

RUN npm install -g gatsby-cli

ARG google_analystics_id
ENV GOOGLE_ANALYTICS_ID=$google_analystics_id

ARG algolia_app_id
ENV ALGOLIA_APP_ID=$algolia_app_id

ARG algolia_search_only_api_key
ENV ALGOLIA_SEARCH_ONLY_API_KEY=$algolia_search_only_api_key

ARG algolia_admin_api_key
ENV ALGOLIA_ADMIN_API_KEY=$algolia_admin_api_key

ARG algolia_index_name
ENV ALGOLIA_INDEX_NAME=$algolia_index_name

ARG fb_app_id
ENV FB_APP_ID=$fb_app_id

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
