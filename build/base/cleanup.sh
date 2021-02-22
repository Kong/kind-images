#!/bin/bash

set -euox pipefail

helm --kubeconfig /etc/kubernetes/admin.conf -n kong-system delete ingress-controller
