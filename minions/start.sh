#!/bin/sh

for SERVICES in docker kube-proxy.service kubelet.service; do
    systemctl start $SERVICES
    systemctl enable $SERVICES
    systemctl status $SERVICES 
done
