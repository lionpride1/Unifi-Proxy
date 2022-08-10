#!ARG BUILD_FROM
#!FROM $BUILD_FROM
WORKDIR /app

#!RUN apk add --update gcc libc-dev linux-headers libusb-dev
#!RUN apk add --update netcat-openbsd 
#!RUN apk add --update git

#!COPY . .

COPY ./docker/entrypoint.sh /
COPY ./docker/client.pem /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["unifi-cam-proxy"]
