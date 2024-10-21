# Container image that runs your code
FROM node:23-alpine

# Install Railway CLI with their install script
RUN apk add curl && apk add tar

# Set the version ourself
ENV RAILWAY_VERSION=3.11.4

RUN curl -fsSL cli.new | sh

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
