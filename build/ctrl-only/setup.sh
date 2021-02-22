#!/bin/bash

set -euox pipefail

# ------------------------------------------------------------------------------
# Setup Kong Controller (without Proxy)
# ------------------------------------------------------------------------------

helm repo add kong https://charts.konghq.com
helm repo update
helm install ingress-controller kong/kong \
    --kubeconfig /etc/kubernetes/admin.conf \
    --create-namespace --namespace kong-system \
    --set ingressController.enabled=true \
    --set ingressController.installCRDs=false \
    --set proxy.enabled=false
