# kubernetes


## Links
[minikube](https://kubernetes.io/docs/tutorials/hello-minikube/)

Create a deployment using image `k8s.gcr.io/echoserver:1.4`
```
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
```

View deployments & pods
```
kubectl get deployments && kubectl get pods
```
Example output
```
NAME         READY   UP-TO-DATE   AVAILABLE   AGE
hello-node   1/1     1            1           7m47s
NAME                          READY   STATUS    RESTARTS   AGE
hello-node-7567d9fdc9-kfbwq   1/1     Running   0          7m47s
```