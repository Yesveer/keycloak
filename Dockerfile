FROM quay.io/keycloak/keycloak:26.2.0

# Copy start script
COPY start-keycloak.sh /start-keycloak.sh
RUN chmod +x /start-keycloak.sh

# Expose the dynamic Render port
ENV PORT=8080
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_HTTP_PORT=$PORT

EXPOSE $PORT

# Run the custom start script
ENTRYPOINT ["/start-keycloak.sh"]
