# kubernetes


## Links
[minikube](https://kubernetes.io/docs/tutorials/hello-minikube/)


## Sample deployment
Create a deployment using image `k8s.gcr.io/echoserver:1.4`
```
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
```

View deployments & pods
```
./deploymentInfo.sh > deploymentInfoOutput.txt
```

Check out the results in `deploymentInfoOutput.txt`
