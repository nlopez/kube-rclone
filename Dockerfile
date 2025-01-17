FROM ubuntu:22.04

ARG RCLONE_VERSION=1.63.0

RUN apt-get update && apt-get install -y wget unzip fuse3 \
  && rm -rfv /var/lib/apt/lists/* \
  && cd /tmp \
  && wget -q https://downloads.rclone.org/v${RCLONE_VERSION}/rclone-v${RCLONE_VERSION}-linux-amd64.zip \
  && unzip /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip \
  && mv /tmp/rclone-v${RCLONE_VERSION}-linux-amd64/rclone /usr/bin \
  && rm -fv /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip

ENTRYPOINT ["/usr/bin/rclone"]
