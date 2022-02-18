FROM alpine:3.15 AS host

RUN apk update && \
    apk upgrade && \
    apk add busybox

COPY host_ipconf.sh /host_ipconf.sh

FROM host AS router

# (Check subject screenshot c:)
RUN apk add quagga

COPY bgpd.conf /etc/quagga/bgpd.conf
COPY ospfd.conf /etc/quagga/ospfd.conf
COPY isisd.conf /etc/quagga/isisd.conf
COPY start.sh /start.sh
COPY router_ipconf.sh /router_ipconf.sh
COPY FRR1 /_lmartin1
COPY FRR2 /_lmartin2
COPY FRR3 /_lmartin3
COPY FRR4 /_lmartin4

RUN chmod +x start.sh

CMD ./start.sh
