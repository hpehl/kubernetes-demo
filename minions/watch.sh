#!/bin/sh

journalctl -f -l -xn -u kubelet -u kube-proxy -u docker
