#!/bin/sh

for SERVICES in kubelet.service kube-proxy.service docker; do
    systemctl stop $SERVICES
    systemctl disable $SERVICES
    systemctl status $SERVICES 
done
