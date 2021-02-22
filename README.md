**WARNING**: this is currently an _experimental_ tool from [@kong/team-k8s](https://github.com/orgs/Kong/teams/team-k8s) don't use this yet unless you're aware of the context. Check in with us in Slack!

# Kong Kubernetes in Docker Images

This repository provides container image builds for [Kind][kind] to deploy [Kubernetes][k8s] clusters with [Kong][konghq] components pre-installed.

These images are intended only for testing and debugging purposes and **should not be used in production environments**.

This is a companion to the [Kong Kubernetes Testing Framework (KTF)][ktf] which uses this tool for integration tests.

[kind]:https://kind.sigs.k8s.io
[k8s]:https://kubernetes.io
[konghq]:https://konghq.com
[ktf]:https://github.com/kong/kind-images

## Requirements

- [Docker][docker] `v20.10.3+`
- [Kubectl][kubectl] `v1.20.4+`
- [Kind][kind] `v0.10.0+`

[docker]:https://www.docker.com/get-started
[kubectl]:https://kubernetes.io/docs/tasks/tools/install-kubectl/
[kind]:https://github.com/kubernetes-sigs/kind

## Usage

The following images are provided by this repository:

- [kong/kind-node](https://hub.docker.com/r/kong/kind-node)
- [kong/kind-node-proxy-only](https://hub.docker.com/r/kong/kind-node-proxy-only)

These are updated and built automatically via [Github Actions][actions] and can be used to create Kubernetes clusters with Kind:

```shell
kind create cluster --name <NAME> --image kong/<IMAGE>
```

[actions]:https://github.com/features/actions

## Contributing New Images

If you want to contribute a new image to this repository look at `build/kind-node` [as a reference][ref].

Essentially new images are a matter of adding the appropriate script(s) on top of the `build/base` image.

[ref]:/build/kind-node/README.md
