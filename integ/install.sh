#!/usr/bin/env sh

set -e

make docker_build

sudo snap install microk8s --classic --channel=1.14/stable

sh boilerplate/lyft/golang_test_targets/dep_install.sh

dep ensure
