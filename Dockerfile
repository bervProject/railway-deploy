# Container image that runs your code
FROM node:19-alpine

# Install Railway CLI
RUN npm i -g @railway/cli@2.1.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
