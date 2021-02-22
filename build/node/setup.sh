#!/bin/bash

set -euox pipefail

# ------------------------------------------------------------------------------
# Setup Kong Kubernetes Ingress Gateway (and Proxy)
# ------------------------------------------------------------------------------

helm repo add kong https://charts.konghq.com
helm repo update
helm install ingress-controller kong/kong \
    --kubeconfig /etc/kubernetes/admin.conf \
    --create-namespace --namespace kong-system \
    --set ingressController.enabled=true \
    --set ingressController.installCRDs=false \
    --set proxy.enabled=true \
    --set proxy.type=NodePort \
    --set proxy.http.nodePort=30080 \
    --set admin.enabled=true \
    --set admin.http.enabled=true \
    --set admin.http.nodePort=32080 \
    --set admin.tls.enabled=false \
    --set tls.enabled=false
