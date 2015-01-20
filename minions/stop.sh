#!/bin/sh

for SERVICES in kubelet.service kube-proxy.service docker; do
    systemctl start $SERVICES
    systemctl enable $SERVICES
    systemctl status $SERVICES 
done
