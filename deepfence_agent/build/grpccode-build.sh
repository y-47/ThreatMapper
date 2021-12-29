#!/bin/bash

cp -R plugins /tmp
cd /tmp/plugins
make clean
make go
build_result=$?
if [ $build_result -ne 0 ]
then
    exit 1
fi
cd -
mkdir ./tools/apache/scope/proto 2>/dev/null
cp /tmp/plugins/proto/* ./tools/apache/scope/proto
