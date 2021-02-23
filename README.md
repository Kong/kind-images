**WARNING**: this is currently an _experimental_ tool from [@kong/team-k8s](https://github.com/orgs/Kong/teams/team-k8s) don't use this yet unless you're aware of the context. Check in with us in [#kong on Kubernetes Slack][slack]!

[slack]:https://kubernetes.slack.com/messages/kong

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

- [kind-images/node](https://docker.pkg.github.com/v2/kong/kind-images/node)
- [kind-images/proxy-only](https://docker.pkg.github.com/v2/kong/kind-images/proxy-only)
- [kind-images/ctrl-only](https://docker.pkg.github.com/v2/kong/kind-images/ctrl-only)

These are updated and built automatically via [Github Actions][actions] and can be used to create Kubernetes clusters with Kind:

```shell
kind create cluster --name <NAME> --image kong/<IMAGE>
```

**Note**: [Github Packages][pkg] currently [require basic auth login to pull (even for public images)][auth].

[actions]:https://github.com/features/actions
[pkg]:https://github.com/features/packages
[auth]:https://docs.github.com/en/packages/guides/pushing-and-pulling-docker-images#authenticating-to-github-container-registry

## Contributing New Images

If you want to contribute a new image to this repository look at `build/kind-node` [as a reference][ref].

Essentially new images are a matter of adding the appropriate script(s) on top of the `build/base` image.

[ref]:/build/kind-node/README.md
