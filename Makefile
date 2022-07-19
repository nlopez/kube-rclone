TAG = docker.io/nlopez/kube-rclone:2022-07-18-00

.PHONY: build
build:
	@docker build . -t $(TAG)

push: build
	@docker push $(TAG)
