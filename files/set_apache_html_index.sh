#!/bin/bash
sleep 180
export POD0=`kubectl get pods -l run=apache-web-server -o jsonpath='{range .items[0]}{@.metadata.name}{"\n"}'`
export POD1=`kubectl get pods -l run=apache-web-server -o jsonpath='{range .items[1]}{@.metadata.name}{"\n"}'`
kubectl exec -i $POD0 -- sh -c 'echo pod_A > /usr/local/apache2/htdocs/index.html' 
kubectl exec -i $POD1 -- sh -c 'echo pod_B > /usr/local/apache2/htdocs/index.html' 
