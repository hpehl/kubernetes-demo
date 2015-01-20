#!/bin/sh

iptables -t nat -I PREROUTING -i eth0 -p tcp -m tcp --dport 9990 -j DNAT --to-destination 10.254.0.2:9990
