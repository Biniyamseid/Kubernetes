# Kubernetes Lab Exercise
**Author:** Biniyam Seid - UGR-9483-13  
**System Hostname:** divinecodecompiler  
**Date:** 2024

## Overview
This repository contains Kubernetes manifests and setup scripts for a comprehensive lab exercise. All resources are properly annotated with student information and designed to demonstrate various Kubernetes concepts.

## System Information
- **Student Name:** Biniyam Seid
- **Student ID:** UGR-9483-13
- **Hostname:** divinecodecompiler
- **Namespace:** biniyam-seid-development

## Files Created

### 1. Namespace Configuration
- **File:** `biniyam-seid-namespace.yaml`
- **Purpose:** Creates a dedicated namespace for all resources
- **Annotations:** Includes author, student ID, and hostname information

### 2. Application Deployment
- **File:** `biniyam-seid-deployment.yaml`
- **Purpose:** Deploys a sample nginx application with 3 replicas
- **Features:** 
  - Proper resource limits and requests
  - Environment variables with student information
  - Comprehensive annotations

### 3. Service Configuration
- **File:** `biniyam-seid-service.yaml`
- **Purpose:** Exposes the application within the cluster
- **Type:** ClusterIP service on port 80

### 4. Configuration Data
- **File:** `biniyam-seid-configmap.yaml`
- **Purpose:** Stores configuration data and a custom HTML page
- **Content:** Student information and a styled web page

### 5. Setup Script
- **File:** `setup-kubernetes-biniyam-seid.sh`
- **Purpose:** Automated deployment script with echo statements
- **Features:** 
  - Step-by-step execution with annotations
  - Hostname verification
  - Comprehensive status checking

## Quick Start

### Prerequisites
- Kubernetes cluster (minikube, kind, or cloud provider)
- kubectl configured and connected to cluster

### Deployment Steps

1. **Make the setup script executable:**
   ```bash
   chmod +x setup-kubernetes-biniyam-seid.sh
   ```

2. **Run the automated setup:**
   ```bash
   ./setup-kubernetes-biniyam-seid.sh
   ```

### Manual Deployment (Alternative)

1. **Check hostname:**
   ```bash
   echo "Current hostname: $(hostname)"
   ```

2. **Create namespace:**
   ```bash
   echo "Creating namespace for Biniyam Seid (UGR-9483-13)..."
   kubectl apply -f biniyam-seid-namespace.yaml
   ```

3. **Deploy application:**
   ```bash
   echo "Deploying application with annotations..."
   kubectl apply -f biniyam-seid-deployment.yaml
   ```

4. **Create service:**
   ```bash
   echo "Creating service..."
   kubectl apply -f biniyam-seid-service.yaml
   ```

5. **Apply ConfigMap:**
   ```bash
   echo "Creating ConfigMap with student information..."
   kubectl apply -f biniyam-seid-configmap.yaml
   ```

## Verification Commands

### Check Resources
```bash
# Verify namespace
kubectl get namespaces | grep biniyam-seid

# Check deployments
kubectl get deployments -n biniyam-seid-development

# Check pods
kubectl get pods -n biniyam-seid-development

# Check services
kubectl get services -n biniyam-seid-development

# Check ConfigMap
kubectl get configmap -n biniyam-seid-development
```

### View Annotations
```bash
# View namespace annotations
kubectl describe namespace biniyam-seid-development

# View deployment annotations
kubectl describe deployment biniyam-seid-app -n biniyam-seid-development

# View service annotations
kubectl describe service biniyam-seid-service -n biniyam-seid-development
```

### Access Application
```bash
# Port forward to access the application
kubectl port-forward service/biniyam-seid-service 8080:80 -n biniyam-seid-development

# Then visit http://localhost:8080 in your browser
```

## Resource Specifications

### Deployment Details
- **Image:** nginx:1.21
- **Replicas:** 3
- **Resources:** 
  - Requests: 64Mi memory, 250m CPU
  - Limits: 128Mi memory, 500m CPU
- **Environment Variables:**
  - STUDENT_NAME: "Biniyam Seid"
  - STUDENT_ID: "UGR-9483-13"
  - HOSTNAME: "divinecodecompiler"

### Annotations Used
All resources include the following annotations:
- `author: "Biniyam Seid - UGR-9483-13"`
- `student-id: "UGR-9483-13"`
- `hostname: "divinecodecompiler"`
- `created-by: "Biniyam Seid"`

## Cleanup

To remove all resources:
```bash
echo "Cleaning up resources for Biniyam Seid (UGR-9483-13)..."
kubectl delete namespace biniyam-seid-development
```

## Notes
- All YAML manifests follow Kubernetes best practices
- Resources are properly labeled and annotated for identification
- The setup script includes comprehensive echo statements for clarity
- System hostname is captured and included in all relevant places

---
**Created by:** Biniyam Seid (UGR-9483-13)  
**System:** divinecodecompiler  
**Lab Exercise:** Kubernetes Fundamentals 