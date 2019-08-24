#!/usr/bin/env bash

pushd build-stage && docker build -t l0gicgate/gocv-alpine:4.1.0-buildstage .; popd
pushd runtime && docker build -t l0gicgate/gocv-alpine:4.1.0-runtime .; popd
pushd example && docker build -t l0gicgate/gocv-alpine:test .; popd
docker run --rm -ti l0gicgate/gocv-alpine:test
docker rmi -f l0gicgate/gocv-alpine:test
