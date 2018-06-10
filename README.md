```
docker run -it --rm -v "${PWD}:/certs" thecase/kubernetes-certificate-generator
```


This will generate the certificates necessary to bootstrap a etcd and Kubernetes cluster as described at [https://kubernetes.io/docs/setup/independent/#installing-prerequisites-on-masters]()
