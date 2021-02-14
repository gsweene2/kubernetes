# Minikube Setup

```
brew install minikube
```

`minikube` is way too long, create an alias
```
alias m="minikube"
```

Check installation
```
m version
```

and start
```
m start
```

## If you already had a kubenetes cluster...

```
kubectl config view > myClusters.yaml
```

Note the config is located at `echo $KUBECONFIG` or `~/.kube/config`


## Cluster is running, get cluster info

```
kubectl cluster-info
```
Expected output
```
Kubernetes master is running at https://127.0.0.1:55000
KubeDNS is running at https://127.0.0.1:55000/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
```