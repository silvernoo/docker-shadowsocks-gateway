FROM shadowsocks/shadowsocks-libev

ENV GATEWAY 172.25.0.1

USER root
COPY gw.sh /

RUN chmod +x /gw.sh

ENTRYPOINT [ "/gw.sh" ]
