#!/bin/sh

workspace_dir=$1
output_dir=$2

artifact_dir="$workspace_dir/yaml-$VERSION"

curl http://pyyaml.org/download/libyaml/yaml-$VERSION.tar.gz -s -o - | tar zxf -

cd yaml-$VERSION
env CFLAGS=-fPIC ./configure --enable-static --disable-shared --prefix=$artifact_dir
make
make install
cd $artifact_dir
mkdir -p $output_dir/$STACK
tar czf $output_dir/$STACK/libyaml-$VERSION.tgz *
