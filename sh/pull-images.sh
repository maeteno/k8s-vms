#!/usr/bin/env bash

docker pull maeteno/pause
docker pull maeteno/coredns
docker pull maeteno/etcd
docker pull maeteno/kube-proxy
docker pull maeteno/kube-scheduler
docker pull maeteno/kube-apiserver
docker pull maeteno/kube-controller-manager

docker tag maeteno/pause:latest k8s.gcr.io/pause:3.1 
docker tag maeteno/coredns:latest k8s.gcr.io/coredns:1.2.6 
docker tag maeteno/etcd:latest k8s.gcr.io/etcd:3.2.24
docker tag maeteno/kube-proxy:latest k8s.gcr.io/kube-proxy:v1.13.3
docker tag maeteno/kube-scheduler:latest k8s.gcr.io/kube-scheduler:v1.13.3
docker tag maeteno/kube-apiserver:latest k8s.gcr.io/kube-apiserver:v1.13.3
docker tag maeteno/kube-controller-manager:latest k8s.gcr.io/kube-controller-manager:v1.13.3

docker rmi  \
    maeteno/pause:latest \
    maeteno/coredns:latest  \
    maeteno/etcd:latest \
    maeteno/kube-proxy:latest \
    maeteno/kube-scheduler:latest \
    maeteno/kube-apiserver:latest \
    maeteno/kube-controller-manager:latest



