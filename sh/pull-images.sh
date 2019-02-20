#!/usr/bin/env bash

sudo docker pull maeteno/pause
sudo docker pull maeteno/coredns
sudo docker pull maeteno/etcd
sudo docker pull maeteno/kube-proxy
sudo docker pull maeteno/kube-scheduler
sudo docker pull maeteno/kube-apiserver
sudo docker pull maeteno/kube-controller-manager

sudo docker tag maeteno/pause:latest k8s.gcr.io/pause:3.1 
sudo docker tag maeteno/coredns:latest k8s.gcr.io/coredns:1.2.6 
sudo docker tag maeteno/etcd:latest k8s.gcr.io/etcd:3.2.24
sudo docker tag maeteno/kube-proxy:latest k8s.gcr.io/kube-proxy:v1.13.3
sudo docker tag maeteno/kube-scheduler:latest k8s.gcr.io/kube-scheduler:v1.13.3
sudo docker tag maeteno/kube-apiserver:latest k8s.gcr.io/kube-apiserver:v1.13.3
sudo docker tag maeteno/kube-controller-manager:latest k8s.gcr.io/kube-controller-manager:v1.13.3

sudo docker rmi  \
    maeteno/pause:latest \
    maeteno/coredns:latest  \
    maeteno/etcd:latest \
    maeteno/kube-proxy:latest \
    maeteno/kube-scheduler:latest \
    maeteno/kube-apiserver:latest \
    maeteno/kube-controller-manager:latest



