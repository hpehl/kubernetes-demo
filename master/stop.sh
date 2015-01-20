#!/bin/sh

for SERVICES in kube-scheduler kube-controller-manager kube-apiserver etcd; do
        systemctl stop $SERVICES
        systemctl disable $SERVICES
        systemctl status $SERVICES
done
