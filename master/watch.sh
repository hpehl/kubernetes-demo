#!/bin/sh

journalctl -f -l -xn -u kube-apiserver -u etcd -u kube-scheduler
