#!/bin/bash

# Kubernetes Setup Script
# Author: Biniyam Seid - UGR-9483-13
# System: $(hostname)
# Date: $(date)

echo "=========================================="
echo "Kubernetes Setup by Biniyam Seid"
echo "Student ID: UGR-9483-13"
echo "System Hostname: $(hostname)"
echo "Date: $(date)"
echo "=========================================="

echo ""
echo "Step 1: Checking Kubernetes cluster status..."
kubectl cluster-info

echo ""
echo "Step 2: Creating namespace for Biniyam Seid (UGR-9483-13)..."
kubectl apply -f biniyam-seid-namespace.yaml

echo ""
echo "Step 3: Verifying namespace creation..."
kubectl get namespaces | grep biniyam-seid

echo ""
echo "Step 4: Deploying application with proper annotations..."
kubectl apply -f biniyam-seid-deployment.yaml

echo ""
echo "Step 5: Creating service for the application..."
kubectl apply -f biniyam-seid-service.yaml

echo ""
echo "Step 6: Creating ConfigMap with student information..."
kubectl apply -f biniyam-seid-configmap.yaml

echo ""
echo "Step 7: Checking deployment status..."
kubectl get deployments -n biniyam-seid-development

echo ""
echo "Step 8: Checking pods status..."
kubectl get pods -n biniyam-seid-development

echo ""
echo "Step 9: Checking services..."
kubectl get services -n biniyam-seid-development

echo ""
echo "Step 10: Displaying detailed information about the deployment..."
kubectl describe deployment biniyam-seid-app -n biniyam-seid-development

echo ""
echo "=========================================="
echo "Setup completed by Biniyam Seid - UGR-9483-13"
echo "System: $(hostname)"
echo "All resources created in namespace: biniyam-seid-development"
echo "==========================================" 