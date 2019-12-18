#!/bin/sh

ip route del default
ip route add default via $GATEWAY

($@)
