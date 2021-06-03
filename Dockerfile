# syntax=docker/dockerfile:1

FROM alpine:3.13

ARG ENVCONSUL_VERSION=0.11.0
ARG VAULT_VERSION=1.7.2

RUN apk add --no-cache \
        aws-cli \
	curl \
	gcc \
	jq \
	mysql-client \
	postgresql-client \
	postgresql-dev	

RUN wget https://releases.hashicorp.com/envconsul/${ENVCONSUL_VERSION}/envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip \
    && unzip envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip -d /usr/local/bin \
    && rm envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip \
    && wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip \
    && unzip vault_${VAULT_VERSION}_linux_amd64.zip -d /usr/local/bin \
    && rm vault_${VAULT_VERSION}_linux_amd64.zip

