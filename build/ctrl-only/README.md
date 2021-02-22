# Kind Node Proxy Only

This container image is based on [kindest/node][kindest] which adds the [Kong Kubernetes Ingress Controller (KIC)][kic] to the cluster _without_ [Kong Gateway][kong] to the cluster deployment.

The use case for this image is to provide your own gateway and test it using the standard KIC.

This image intentionally exposes the Kong Admin API via `NodePort` and is only meant for testing and non-production use cases.

[kindest]:https://hub.docker.com/r/kindest/node
[kic]:https://github.com/kong/kong
