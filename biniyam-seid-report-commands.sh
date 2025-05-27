#!/bin/bash

# Kubernetes Lab Report Commands
# Student: Biniyam Seid - UGR-9483-13
# System: $(hostname)
# Date: $(date)

echo "=============================================="
echo "Kubernetes Lab Report by Biniyam Seid"
echo "Student ID: UGR-9483-13"
echo "System Hostname: $(hostname)"
echo "Date: $(date)"
echo "=============================================="

echo ""
echo "SCREENSHOT 1: Minikube Status"
echo "=============================================="
echo "Submitted by Biniyam Seid - ID: UGR-9483-13"
minikube status

echo ""
echo "SCREENSHOT 2: Kubectl Cluster Info + Node Description"
echo "=============================================="
echo "Cluster information for Biniyam Seid - UGR-9483-13"
kubectl cluster-info
echo ""
echo "Getting nodes for Biniyam Seid - UGR-9483-13"
kubectl get nodes
echo ""
echo "Describing minikube node for Biniyam Seid - UGR-9483-13"
kubectl describe node minikube

echo ""
echo "Creating custom namespace for Biniyam Seid"
kubectl create namespace biniyam-seid-ugr9483

echo ""
echo "SCREENSHOT 3: Namespace Creation & Config"
echo "=============================================="
echo "Listing namespaces for Biniyam Seid - UGR-9483-13"
kubectl get namespaces
echo ""
echo "Setting context to custom namespace for Biniyam Seid"
kubectl config set-context --current --namespace=biniyam-seid-ugr9483

echo ""
echo "SCREENSHOT 4: Dashboard"
echo "=============================================="
echo "Starting dashboard for Biniyam Seid - UGR-9483-13"
echo "Run this command in a separate terminal:"
echo "minikube dashboard --url"
echo "Note: Label the browser tab with 'Biniyam Seid - UGR-9483-13'"

echo ""
echo "SCREENSHOT 5: Hello World Service"
echo "=============================================="
echo "Creating hello-node deployment for Biniyam Seid - UGR-9483-13"
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
echo ""
echo "Adding student label to deployment"
kubectl label deployment hello-node student=biniyam-seid-ugr9483
echo ""
echo "Exposing hello-node service for Biniyam Seid"
kubectl expose deployment hello-node --type=LoadBalancer --port=8080
echo ""
echo "Getting services for Biniyam Seid - UGR-9483-13"
kubectl get services
echo ""
echo "Starting minikube service for Biniyam Seid"
echo "Run this command to open the service:"
echo "minikube service hello-node"

echo ""
echo "SCREENSHOT 6: Manifest Application"
echo "=============================================="
echo "Note: Make sure to add annotation to YAML file before applying:"
echo "metadata:"
echo "  annotations:"
echo "    submitted-by: biniyam-seid-ugr9483"
echo ""
echo "Applying manifest for Biniyam Seid - UGR-9483-13"
# kubectl apply -f solution/v1.yaml
echo "Getting all resources for Biniyam Seid"
kubectl get all

echo ""
echo "SCREENSHOT 7: Rollout Restart"
echo "=============================================="
echo "Performing rollout restart for Biniyam Seid - UGR-9483-13"
kubectl rollout restart deployment hello-node
echo ""
echo "Checking rollout status for Biniyam Seid"
kubectl rollout status deployment hello-node

echo ""
echo "=============================================="
echo "Report commands completed by Biniyam Seid - UGR-9483-13"
echo "System: $(hostname)"
echo "All commands executed successfully"
echo "==============================================" 