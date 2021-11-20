# Container image that runs your code
FROM node:16-alpine

# Install Railway CLI
RUN npm i -g @railway/cli@0.2.51

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
