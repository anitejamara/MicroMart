#!/bin/bash

docker build -t order-management ./MicroMart/orders/
docker build -t product-management ./MicroMart/products/
docker build -t user-management ./MicroMart/users/
docker tag order-management ashvinbhat/order-management:latest
docker push ashvinbhat/order-management:latest
docker tag product-management ashvinbhat/product-management:latest
docker push ashvinbhat/product-management:latest
docker tag user-management ashvinbhat/user-management:latest
docker push ashvinbhat/user-management:latest
kubectl delete services --all
kubectl delete deployments --all
kubectl apply -f ./MicroMart/Kubernetes/
