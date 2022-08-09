#!/bin/sh

if [ ! -z "${RTSP_URL:-}" ] && [ ! -z "${HOST}" ] && [ ! -z "${TOKEN}" ]; then
  echo "Using RTSP stream from $RTSP_URL"
  exec unifi-cam-proxy --host "$HOST" --name "${NAME:-unifi-cam-proxy}" --mac "${MAC:-'AA:BB:CC:00:11:22'}" --cert /client.pem --token "$TOKEN" rtsp -s "$RTSP_URL"
fi

echo "$@"
exec unifi-cam-proxy --host 192.168.2.1 --name unifi-cam-proxy --mac 'AA:BB:CC:00:11:22' --cert /client.pem --token 0bllIWKiKiApcl5Y27jMENk9OvL7HQZZ rtsp -s rtsp://admin:Popo2013@192.168.2.29:554/snl/live/1/2
#! exec "$@"
