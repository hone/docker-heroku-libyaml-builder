#!/bin/sh

docker run -v `pwd`/builds:/tmp/output -e VERSION=0.1.7 -e STACK=cedar-14 hone/libyaml-builder:cedar-14
