# PersonalBlog
## Prerequisites

If you do not have Gatsby Cli installed yet, do it first.

```text
npm install --global gatsby-cli
```

```text
gatsby develop
```

to hot-serve your website on http://localhost:8000 or

```text
gatsby build
```

to create static site ready to host (/public).

## Containerize
```shell script
docker build -t personal-blog:<TAG> .
```

```shell script
docker run --env GOOGLE_ANALYTICS_ID=<...> \
           --env ALGOLIA_APP_ID=<...> \
           --env ALGOLIA_SEARCH_ONLY_API_KEY=<...> \
           --env ALGOLIA_ADMIN_API_KEY=<...> \
           --env ALGOLIA_INDEX_NAME=<...> \
           --env FB_APP_ID=<...> \
 -t personal-blog:<TAG> .
```
