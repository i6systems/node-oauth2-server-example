# This docker file is used to build the image of the container which will run the api app
FROM node:10-slim

LABEL version=$CIRCLE_TAG \
      maintainer="dev-team@i6.io"

COPY dist /app/
COPY node_modules /app/node_modules

WORKDIR /app/

EXPOSE 3000

CMD ["node", "/app.js"]