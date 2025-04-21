#!/bin/bash

docker run -p 8080:8080 \
  -e KC_BOOTSTRAP_ADMIN_USERNAME=admin \
  -e KC_BOOTSTRAP_ADMIN_PASSWORD=kaal@123 \
  quay.io/keycloak/keycloak:26.2.0 \
  start-dev
