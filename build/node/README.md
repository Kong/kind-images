# Kind Node

This container image is based on [kindest/node][kindest] which adds the [Kong Kubernetes Ingress Controller (KIC)][kic] to the cluster deployment and provides it's own [Kong Gateway][kong].

The use case for this image is to provide a complete Kong Kubernetes testing environment for integration tests.

This image intentionally exposes the Kong Admin API via `NodePort` and is only meant for testing and non-production use cases.

[kindest]:https://hub.docker.com/r/kindest/node
[kic]:https://github.com/kong/kubernetes-ingress-controller
[kong]:https://github.com/kong/kong
