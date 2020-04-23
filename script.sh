#!/bin/bash

sudo snap wait system seed.loaded
sudo snap install microk8s --classic --channel=1.18/stable
sudo wget https://microk8s.io/docs/containerd-template.toml -O /var/snap/microk8s/current/args/containerd-template.toml
if [[ ${REGISTRY_ENDPOINT} ]]; then
  sudo sed -i "s/10.141.241.175:32000/$REGISTRY_ENDPOINT/g" /var/snap/microk8s/current/args/containerd-template.toml
fi


