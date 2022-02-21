FROM frrouting/frr AS host

RUN apk update && \
    apk upgrade && \
    apk add busybox

COPY host_ipconf.sh /host_ipconf.sh

FROM host AS router

COPY vtysh.conf /etc/frr/vtysh.conf
COPY daemons /etc/frr/daemons

# (Check subject screenshot c:)

COPY start.sh /start.sh
COPY router_ipconf.sh /router_ipconf.sh
COPY FRR1 /router_lmartin-1
COPY FRR2 /router_lmartin-2
COPY FRR3 /router_lmartin-3
COPY FRR4 /router_lmartin-4

RUN chmod +x start.sh

CMD ./start.sh
