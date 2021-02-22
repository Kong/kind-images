# Kind Node Proxy Only

This container image is based on [kindest/node][kindest] which adds the [Kong Gateway][kong] to the cluster deployment.

The use case for this image is to provide a standard gateway so that a custom [Kong Kubernetes Ingress Controller (KIC)][kic] can be integration tested with it.

This image intentionally exposes the Kong Admin API via `NodePort` and is only meant for testing and non-production use cases.

[kindest]:https://hub.docker.com/r/kindest/node
[kong]:https://github.com/kong/kong
[kic]:https://github.com/kong/kubernetes-ingress-controller
