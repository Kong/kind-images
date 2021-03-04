REPO ?= "kong"
TAG ?= "latest"

all: node proxy-only ctrl-only

base:
	docker build -t $(REPO)/kind-node-base:$(TAG) ./build/base/

node: base
	docker build -t $(REPO)/kind-node:$(TAG) ./build/node/

proxy-only: base
	docker build -t $(REPO)/kind-node-proxy-only:$(TAG) ./build/proxy-only/

proxy-only-db: base
	docker build -t $(REPO)/kind-node-proxy-only-db:$(TAG) ./build/proxy-only-db/

ctrl-only: base
	docker build -t $(REPO)/kind-node-ctrl-only:$(TAG) ./build/ctrl-only/
