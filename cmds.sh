#!/bin/bash
kubectl create ns omer-example

kubectl create -f deployment.yaml


kubectl get deploy -n omer-example
kubectl get pods --show-labels -n omer-example

kubectl logs deploy/busybox-deployment -n omer-example

#cleanup
kubectl delete -f deployment.yaml --force --grace-period=0
kubectl get po --watch --show-labels -n omer-example


