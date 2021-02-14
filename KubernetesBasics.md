# Kubernetes Basics

Source: [Kubernetes Basics](https://kubernetes.io/docs/tutorials/kubernetes-basics/)

## Create a Deployment

```
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1
```

## View the Deployment

```
kubectl get deployments
```

## Turn on the Proxy

```
kubectl proxy
```

And proceed to open a new terminal

Now you can use the k8s APIs hosted through the proxy endpoint

Try `curl http://localhost:8001/version`, which should return the same as `kubectl get deployments`

