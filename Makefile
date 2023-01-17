TAG = docker.io/nlopez/kube-rclone:2023-01-16-00

.PHONY: build
build:
	@docker build . -t $(TAG)

push: build
	@docker push $(TAG)
