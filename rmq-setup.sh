#!/bin/bash

mkdir -p ~/.bin
mkdir -p ~/.tmp
pushd ~/.tmp

wget -O erl.deb https://bit.ly/2E4UUxT
wget -O rmq.tar.xz https://bit.ly/2SnHcyB

dpkg -x erl.deb ./erl
cp ./erl/usr/lib/erlang/erts-10.2.3/bin/* ~/.bin/

tar xfv rmq.deb
mv rabbitmq_server-3.7.11 ~/.bin/rmq-server

popd