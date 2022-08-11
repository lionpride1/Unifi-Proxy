# ARG BUILD_FROM=keshavdv/unifi-cam-proxy
ARG BUILD_FROM=ghcr.io/lionpride1/unifi-cam-proxy:2.3.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}
WORKDIR /app

# RUN apk add --update gcc libc-dev linux-headers libusb-dev
# RUN apk add --update netcat-openbsd 
# RUN apk add --update git

# COPY . .

COPY ./docker/entrypoint.sh /
COPY ./docker/client.pem /
RUN chown -R /app

ENTRYPOINT ["/entrypoint.sh"]
CMD ["unifi-cam-proxy"]
