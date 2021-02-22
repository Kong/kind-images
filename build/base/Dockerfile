FROM "kindest/node:v1.20.2"

# FIXME (see https://github.com/Kong/kind-images/issues/1) COPY ./kubeadm.conf /kind/kubeadm.conf

COPY ./setup.service /etc/systemd/system/kong-setup.service

COPY ./cleanup.sh /opt/kong/cleanup.sh

RUN systemctl enable kong-setup.service

RUN curl -s -o - https://get.helm.sh/helm-v3.5.2-linux-amd64.tar.gz | tar -z -C /usr/bin/ --extract --strip-components=1 --file=/dev/stdin linux-amd64/helm

