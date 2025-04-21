#!/bin/bash

# Set default port if not provided by Render
PORT=${PORT:-8080}

# Start Keycloak in development mode using environment variables
/opt/keycloak/bin/kc.sh start-dev --http-port=$PORT
