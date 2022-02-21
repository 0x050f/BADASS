FROM alpine:3.15.0 AS host

RUN apk update && \
    apk upgrade && \
    apk add busybox

COPY host_ipconf.sh /host_ipconf.sh

FROM frrouting/frr:v8.1.0 AS router

RUN apk update && \
    apk upgrade && \
    apk add busybox

COPY vtysh.conf /etc/frr/vtysh.conf
COPY daemons /etc/frr/daemons

# (Check subject screenshot c:)

COPY start.sh /start.sh
COPY router_ipconf.sh /router_ipconf.sh
COPY spine_router.sh /spine_router.sh
COPY leaf_router.sh /leaf_router.sh

RUN chmod +x start.sh

CMD ./start.sh
