FROM quay.io/keycloak/keycloak:26.2.0

# Copy start script to a writable location
COPY start-keycloak.sh /opt/keycloak/start-keycloak.sh

# No need to chmod — the script will already have the right permissions
# Set required environment variables
ENV PORT=8080
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_HTTP_PORT=$PORT

EXPOSE $PORT

# Use the script as entrypoint
ENTRYPOINT ["/opt/keycloak/start-keycloak.sh"]
