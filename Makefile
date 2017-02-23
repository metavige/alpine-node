IMAGE=metavige/alpine-node:7

build:
	docker build -t ${IMAGE} .

onbuild:
	docker build -t ${IMAGE}:on-build -f Dockerfile.onbuild .

push:
	docker push ${IMAGE}
