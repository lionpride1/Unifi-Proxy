ARG BUILD_FROM
FROM ghcr.io/lionpride1/unifi-cam-proxy:2.0.0
WORKDIR /app

#!RUN apk add --update gcc libc-dev linux-headers libusb-dev
#!RUN apk add --update netcat-openbsd 
#!RUN apk add --update git

#!COPY . .

COPY ./docker/entrypoint.sh /
COPY ./docker/client.pem /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["unifi-cam-proxy"]
