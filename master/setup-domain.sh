#!/bin/sh

for SERVICE in dc-service-9990.json dc-service-9999.json hc-service-main-group.json hc-service-other-group.json; do
        kubectl create -f wildfly-domain/$SERVICE
done

for RC in dc-rc.json hc-rc-main-group.json hc-rc-other-group.json; do
        kubectl create -f wildfly-domain/$RC
done
