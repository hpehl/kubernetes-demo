#!/bin/sh

# todo: set number of replicas to zero
for REPLICATION_CONTROLLER in hc-replication-other-group.json hc-replication-main-group.json dc-replication.json; do
        kubectl delete -f wildfly-domain/$REPLICATION_CONTROLLER
done

for SERVICE in hc-service-other-group.json hc-service-main-group.json dc-service.json; do
        kubectl delete -f wildfly-domain/$SERVICE
done
