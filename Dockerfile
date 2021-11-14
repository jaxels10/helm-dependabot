# Container image that runs your code
FROM alpine/helm

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY script.sh /script.sh
RUN chmod +x /script.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sh", "/script.sh"]