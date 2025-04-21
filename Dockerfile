# Use a base image with Docker installed
FROM docker:dind

# Install bash for easier scripting
RUN apk add --no-cache bash

# Copy the start script
COPY start-keycloak.sh /start-keycloak.sh

# Set the entrypoint
ENTRYPOINT ["/start-keycloak.sh"]
