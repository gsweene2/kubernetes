# kubernetes


## Links
[minikube](https://kubernetes.io/docs/tutorials/hello-minikube/)

## Install minikube

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

## Sample deployment using kubectl

Create a deployment using image `k8s.gcr.io/echoserver:1.4`
```
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
```

View deployments & pods
```
./deploymentInfo.sh > deploymentInfoOutput.txt
```

Check out the results in `deploymentInfoOutput.txt`

Expose the pod to the internet:
```
kubectl expose deployment hello-node --type=LoadBalancer --port=8080
```

View the ports:
```
kubectl get services
```

Sample output:
```
NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
hello-node   LoadBalancer   10.106.229.76   localhost     8080:32437/TCP   2m19s
kubernetes   ClusterIP      10.96.0.1       <none>        443/TCP          26h
```

Service hello-node is now exposed on port 8080 (which maps to 32437 in the pod).

View it by naviagating to `EXTERNAL-IP/PORT(S)` in the browser, like `localhost/8080`
