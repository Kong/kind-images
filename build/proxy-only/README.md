# Kind Node Proxy Only (DBLESS Mode)

This container image is based on [kindest/node][kindest] which adds the [Kong Gateway][kong] to the cluster deployment in [DBLESS Mode][dbless].

The use case for this image is to provide a standard gateway so that a custom [Kong Kubernetes Ingress Controller (KIC)][kic] can be integration tested with it.

This image intentionally exposes the Kong Admin API via `NodePort` and is only meant for testing and non-production use cases.

[kindest]:https://hub.docker.com/r/kindest/node
[kong]:https://github.com/kong/kong
[dbless]:https://docs.konghq.com/gateway-oss/2.3.x/kong-for-kubernetes/install/#using-a-database-for-kong-for-kubernetes
[kic]:https://github.com/kong/kubernetes-ingress-controller
