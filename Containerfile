# Container image that runs your code
FROM ubuntu

# Copies your code file from your repository to the filesystem path `/` of the container
COPY build.xml ant-build/ entrypoint.sh /javaqc/

RUN chmod +x /javaqc/entrypoint.sh

# Code file to execute when the container starts up
ENTRYPOINT ["/javaqc/entrypoint.sh"]
