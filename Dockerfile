# This docker file is used to build the image of the container which will run the api app
FROM node:10-slim

LABEL version=$CIRCLE_TAG \
      maintainer="dev-team@i6.io"

COPY * /app/

WORKDIR /app/

EXPOSE 3000

CMD ["npm", "start"]