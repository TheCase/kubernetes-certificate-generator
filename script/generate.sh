#!/bin/sh -e

cd /assets
cfssl gencert -initca ca-csr.json | cfssljson -bare ca -
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=client client.json | cfssljson -bare client
cp /assets/* /certs
cp /usr/local/bin/cfssl* /certs
