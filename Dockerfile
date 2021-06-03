# syntax=docker/dockerfile:1

FROM alpine:3.13

RUN apk add --no-cache \
	aws-cli \
	mysql-client \
	postgresql-client
