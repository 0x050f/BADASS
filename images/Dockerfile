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

COPY start.sh /start.sh

# P2
COPY static_ipconf.sh /static_ipconf.sh
COPY multicast_ipconf.sh /multicast_ipconf.sh

# P3
COPY spine_router.sh /spine_router.sh
COPY leaf_router.sh /leaf_router.sh

CMD ./start.sh
