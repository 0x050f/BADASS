FROM alpine:3.15 AS host

RUN apk update && \
    apk upgrade && \
    apk add busybox

FROM host AS router

RUN apk add quagga bird openrc && \
    mkdir /run/openrc && \
    touch run/openrc/softlevel && \
    rc-status -a && \
    rc-update add bird default
