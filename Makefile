TAG = docker.io/nlopez/kube-rclone:2022-10-29-00

.PHONY: build
build:
	@docker build . -t $(TAG)

push: build
	@docker push $(TAG)
