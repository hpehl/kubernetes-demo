#!/bin/sh

for SERVICE in dc-service.json hc-service-main-group.json hc-service-other-group.json; do
        kubectl create -f wildfly-domain/$SERVICE
done

for REPLICATION_CONTROLLER in dc-replication.json hc-replication-main-group.json hc-replication-other-group.json; do
        kubectl create -f wildfly-domain/$REPLICATION_CONTROLLER
done
