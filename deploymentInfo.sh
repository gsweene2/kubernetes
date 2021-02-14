#!/bin/bash

echo "Kubernetes Deployment Info"
printf "\nDeployments:\n\n"
kubectl get deployments
printf "\nPods:\n\n"
kubectl get pods
printf "\nEvents:\n\n"
kubectl get events
printf "\nConfig:\n\n"
kubectl config view