#!/bin/sh

for SERVICES in etcd kube-apiserver kube-controller-manager kube-scheduler; do
    systemctl start $SERVICES
    systemctl enable $SERVICES
    systemctl status $SERVICES 
done
