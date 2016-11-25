IMAGE=metavige/alpine-node

build:
	docker build -t ${IMAGE} .

onbuild:
	docker build -t ${IMAGE}:on-build -f Dockerfile.onbuild .

