FROM ubuntu:latest AS ca
RUN apt update -y && apt install ca-certificates -y

FROM containerinfra/keycloak-gatekeeper:4.8.0
COPY --from=ca /etc/ssl/certs /etc/ssl/certs
