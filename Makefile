TAG = docker.io/nlopez/kube-rclone:2023-03-16-00

.PHONY: build
build:
	@docker build . -t $(TAG)

push: build
	@docker push $(TAG)
