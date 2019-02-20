#!/usr/bin/env bash

sudo docker pull maeteno/pause:3.1
sudo docker pull maeteno/coredns:1.2.6 
sudo docker pull maeteno/etcd:3.2.24
sudo docker pull maeteno/kube-proxy:v1.13.3
sudo docker pull maeteno/kube-scheduler:v1.13.3
sudo docker pull maeteno/kube-apiserver:v1.13.3
sudo docker pull maeteno/kube-controller-manager:v1.13.3

sudo docker tag maeteno/pause:3.1 k8s.gcr.io/pause:3.1 
sudo docker tag maeteno/coredns:1.2.6  k8s.gcr.io/coredns:1.2.6 
sudo docker tag maeteno/etcd:3.2.24 k8s.gcr.io/etcd:3.2.24
sudo docker tag maeteno/kube-proxy:v1.13.3 k8s.gcr.io/kube-proxy:v1.13.3
sudo docker tag maeteno/kube-scheduler:v1.13.3 k8s.gcr.io/kube-scheduler:v1.13.3
sudo docker tag maeteno/kube-apiserver:v1.13.3 k8s.gcr.io/kube-apiserver:v1.13.3
sudo docker tag maeteno/kube-controller-manager:v1.13.3 k8s.gcr.io/kube-controller-manager:v1.13.3

sudo docker rmi  \
    maeteno/pause:latest \
    maeteno/coredns:latest  \
    maeteno/etcd:latest \
    maeteno/kube-proxy:latest \
    maeteno/kube-scheduler:latest \
    maeteno/kube-apiserver:latest \
    maeteno/kube-controller-manager:latest



