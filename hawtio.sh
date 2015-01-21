#!/bin/sh

docker run --rm -p 9123:8080 -it -e KUBERNETES_MASTER=http://ec2-54-93-75-187.eu-central-1.compute.amazonaws.com:8080 fabric8/hawtio
