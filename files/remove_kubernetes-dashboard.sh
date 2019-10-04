#!/bin/bash
su -c - devopsdev 'helm delete --purge kubernetes-dashboard'
kubectl -n kube-system delete serviceaccount kubernetes-dashboard
kubectl -n kube-system delete role kubernetes-dashboard
kubectl -n kube-system delete rolebinding kubernetes-dashboard
kubectl -n kube-system delete service kubernetes-dashboard
kubectl -n kube-system delete deployments.apps kubernetes-dashboard
kubectl -n kube-system delete ingresses.extensions kubernetes-dashboard
