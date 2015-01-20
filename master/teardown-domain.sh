#!/bin/sh

# todo: set number of replicas to zero
for REPLICATION_CONTROLLER in hc-controller-other-group.json hc-controller-main-group.json dc-controller.json; do
        kubectl delete -f wildfly-domain/$REPLICATION_CONTROLLER
done

for SERVICE in hc-service-other-group.json hc-service-main-group.json dc-service.json; do
        kubectl delete -f wildfly-domain/$SERVICE
done
