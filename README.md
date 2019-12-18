# docker-shadowsocks-gateway


```bash
$ docker run -d --restart unless-stopped --name ss-server-udp-2 -d -p 8489:8489 -p 8489:8489/udp --cap-add NET_ADMIN dockerhub.azk8s.cn/matosama/docker-shadowsocks-gateway ss-server -s 0.0.0.0 -p 8489 -u -k $PASSWORD -m aes-256-cfb -t 300
2fffe6be24d3b918613f36c344c640f462ca3f0fb09c99e3dc2698037cd45810

$ docker run -d --restart unless-stopped --net=redir --env GATEWAY=172.25.0.1 --name ss-server-udp-2 -d -p 8489:8489 -p 8489:8489/udp --cap-add NET_ADMIN dockerhub.azk8s.cn/m
atosama/docker-shadowsocks-gateway ss-server -s 0.0.0.0 -p 8489 -u -k 7TthlwFbrRDcCDsSB1qV -m aes-256-cfb -t 300
c2920505373cc29fccbb95cc9476276ac5864ef1bbee8644e16f1af7fde932ed

$ docker exec ss-server-udp-2 route
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
default         172.25.0.1      0.0.0.0         UG    0      0        0 eth1
172.17.0.0      *               255.255.0.0     U     0      0        0 eth0
172.25.0.0      *               255.255.0.0     U     0      0        0 eth1

```
