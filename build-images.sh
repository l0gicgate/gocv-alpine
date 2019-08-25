#!/bin/sh
pushd build-stage docker build -t lgse/gocv-alpine:4.1.0-buildstage .; popd
pushd runtime docker build -t lgse/gocv-alpine:4.1.0-runtime .; popd
