#!/bin/bash

set -euox pipefail

# ------------------------------------------------------------------------------
# Setup Kong Proxy (without Kubernetes Ingress Controller)
# ------------------------------------------------------------------------------

helm repo add kong https://charts.konghq.com
helm repo update
helm install ingress-controller kong/kong \
    --kubeconfig /etc/kubernetes/admin.conf \
    --create-namespace --namespace kong-system \
    --set ingressController.enabled=false \
    --set proxy.type=NodePort \
    --set proxy.http.nodePort=30080 \
    --set admin.enabled=true \
    --set admin.http.enabled=true \
    --set admin.http.nodePort=32080 \
    --set admin.tls.enabled=false \
    --set tls.enabled=false
