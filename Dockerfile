FROM quay.io/keycloak/keycloak:26.2.0

# Enable health and metrics
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure for Render
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_PROXY=edge
ENV KC_HTTP_RELATIVE_PATH=/

# Use the PORT environment variable provided by Render
ENV KC_HTTP_PORT=$PORT

# Change the entrypoint to use the PORT variable
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=${PORT}"]
