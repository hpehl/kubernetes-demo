#!/bin/sh

for SERVICE in dc-service-9990.json dc-service-9999.json hc-service-main-group.json hc-service-other-group.json; do
        kubectl create -f wildfly-domain/$SERVICE
done

for REPLICATION_CONTROLLER in dc-controller.json hc-controller-main-group.json hc-controller-other-group.json; do
        kubectl create -f wildfly-domain/$REPLICATION_CONTROLLER
done
