all: alpine centos8 centos7 centos6 bullseye buster stretch

.PHONY: centos6
alpine centos8 centos7 centos6 bullseye buster stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push $*
