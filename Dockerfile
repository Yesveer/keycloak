FROM quay.io/keycloak/keycloak:26.2.0

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Start in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
