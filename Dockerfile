FROM quay.io/keycloak/keycloak:26.2.0

# Enable health and metrics
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Use the dynamic port from Render
ENV PORT=8080

# Make Keycloak listen on all interfaces and use the dynamic Render port
ENV KC_HTTP_PORT=${PORT}
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_HOSTNAME=0.0.0.0

# Expose the port (Render still needs ENTRYPOINT to listen on $PORT)
EXPOSE ${PORT}

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=${PORT}"]
