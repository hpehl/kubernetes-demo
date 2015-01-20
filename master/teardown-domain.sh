#!/bin/sh

# todo: set number of replicas to zero
for RC in hc-rc-other-group.json hc-rc-main-group.json dc-rc.json; do
        kubectl delete -f wildfly-domain/$RC
done

for SERVICE in hc-service-other-group.json hc-service-main-group.json dc-service-9999.json dc-service-9990.json; do
        kubectl delete -f wildfly-domain/$SERVICE
done
