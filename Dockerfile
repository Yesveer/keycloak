FROM quay.io/keycloak/keycloak:26.2.0

ENV KC_METRICS_ENABLED=true
ENV JAVA_OPTS_APPEND="-Dkeycloak.profile=preview"

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start-dev", "--http-port=$PORT", "--http-host=0.0.0.0", "--hostname-strict=false", "--hostname-strict-https=false"]
