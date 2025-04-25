# Use the official Keycloak image
FROM quay.io/keycloak/keycloak:26.2.1

# Set environment variables
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin \
    KC_BOOTSTRAP_ADMIN_PASSWORD=admin

# Expose the default Keycloak port
EXPOSE 8080

# Set the command to run Keycloak in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
