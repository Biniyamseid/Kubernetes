# 🚀 Kubernetes Assignment Submission

<div align="center">

![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Minikube](https://img.shields.io/badge/minikube-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)

**Student:** `Biniyam Seid`  
**ID:** `UGR-9483-13`  
**Course:** Kubernetes Container Orchestration  
**Date:** May 26, 2025

</div>

---

## 📋 Assignment Overview

This assignment demonstrates comprehensive Kubernetes operations including:

- ✅ Minikube cluster setup and dashboard access
- ✅ Service deployment and management
- ✅ Namespace creation and usage
- ✅ Application logging and rollout management

---

## 🎯 Deployment Summary

| Component           | Name                       | Status     | URL                         |
| ------------------- | -------------------------- | ---------- | --------------------------- |
| **Main Deployment** | `biniyam-seid-ugr-9483-13` | ✅ Running | `http://192.168.49.2:32642` |
| **Namespace**       | `biniyamseid-demo`         | ✅ Active  | -                           |
| **Replicas**        | 3 Pods                     | ✅ Running | Load Balanced               |
| **Service Type**    | LoadBalancer               | ✅ Exposed | NodePort: 32642             |

---

## 🏗️ 1. Minikube and Dashboard Running

### Cluster Status

- **Minikube Status:** ✅ Running
- **Dashboard URL:** `http://127.0.0.1:46863/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/`

![Minikube Dashboard](./Screenshot%20from%202025-05-26%2010-26-53.png)
_Kubernetes Dashboard showing cluster overview and workloads_

---

## 🌐 2. Output of Deployed Services

### Service Overview

Our main service `biniyam-seid-ugr-9483-13` is successfully deployed and accessible.

![Service Overview](./Screenshot%20from%202025-05-26%2010-32-34.png)
_Complete service listing across all namespaces_

### Service Details

![Service Details](./Screenshot%20from%202025-05-26%2010-34-15.png)
_Detailed service configuration and endpoints_

### Service Endpoints and Connectivity

![Service Endpoints](./Screenshot%20from%202025-05-26%2010-35-30.png)
_Service endpoints showing 3 active pods with load balancing_

### Service Accessibility Test

![Service Test](./Screenshot%20from%202025-05-26%2010-36-48.png)
_Live service response showing web application served from named pods_

### Service URLs Summary

![Service URLs](./Screenshot%20from%202025-05-26%2010-38-03.png)
_All accessible service URLs in the cluster_

### Complete Service Output

![Service Summary](./Screenshot%20from%202025-05-26%2010-39-37.png)
_Comprehensive service deployment summary_

---

## 📁 3. Namespace Creation and Usage

### Current Namespaces

```bash
kubectl get namespaces
```

![Current Namespaces](./Screenshot%20from%202025-05-26%2010-41-22.png)
_All namespaces in the cluster including custom ones_

### Creating New Namespaces

```bash
kubectl create namespace biniyam-seid-production
kubectl create namespace biniyam-seid-testing
kubectl create namespace biniyam-seid-development
```

![New Namespaces](./Screenshot%20from%202025-05-26%2010-43-17.png)
_Creating namespaces with student identifier_

### Namespace Listing with Labels

![Namespace Labels](./Screenshot%20from%202025-05-26%2010-44-58.png)
_All namespaces showing custom labels and metadata_

### Namespace Details

![Namespace Details](./Screenshot%20from%202025-05-26%2010-46-24.png)
_Detailed namespace information with custom labels_

---

## 📊 4. Logs and Rollout Restarts

### Current Deployment Status

![Deployment Status](./Screenshot%20from%202025-05-26%2010-47-59.png)
_Current deployment showing 3/3 ready replicas_

### Application Logs

![Application Logs](./Screenshot%20from%202025-05-26%2010-49-10.png)
_Live application logs from all pods showing Flask server activity_

### Rollout History

![Rollout History](./Screenshot%20from%202025-05-26%2010-50-36.png)
_Deployment rollout history showing revisions_

### Performing Rollout Restart

![Rollout Restart](./Screenshot%20from%202025-05-26%2010-51-20.png)
_Executing rollout restart command_

### Monitoring Rollout Status

![Rollout Status](./Screenshot%20from%202025-05-26%2010-52-22.png)
_Monitoring the rollout progress and completion_

---

## 🔧 Technical Implementation

### Key Commands Used

```bash
# Cluster Management
minikube start
minikube status
minikube dashboard --url

# Namespace Operations
kubectl create namespace biniyamseid-demo
kubectl get namespaces --show-labels
kubectl describe namespace biniyam-seid-development

# Deployment Management
kubectl create deployment biniyam-seid-ugr-9483-13 --image=devopsjourney1/mywebapp
kubectl scale deployment biniyam-seid-ugr-9483-13 --replicas=3
kubectl expose deployment biniyam-seid-ugr-9483-13 --type=LoadBalancer --port=80

# Logging and Rollouts
kubectl logs -l app=biniyam-seid-ugr-9483-13
kubectl rollout restart deployment/biniyam-seid-ugr-9483-13
kubectl rollout history deployment/biniyam-seid-ugr-9483-13
```

### Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    Minikube Cluster                        │
├─────────────────────────────────────────────────────────────┤
│  Namespace: biniyamseid-demo                               │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  Deployment: biniyam-seid-ugr-9483-13              │   │
│  │  ┌─────────┐ ┌─────────┐ ┌─────────┐              │   │
│  │  │  Pod 1  │ │  Pod 2  │ │  Pod 3  │              │   │
│  │  └─────────┘ └─────────┘ └─────────┘              │   │
│  └─────────────────────────────────────────────────────┘   │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  Service: biniyam-seid-ugr-9483-13                 │   │
│  │  Type: LoadBalancer                                │   │
│  │  Port: 80 → NodePort: 32642                       │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
```

---

## 🎉 Results Summary

| Requirement           | Status      | Evidence                             |
| --------------------- | ----------- | ------------------------------------ |
| **Minikube Running**  | ✅ Complete | Dashboard accessible, cluster active |
| **Services Deployed** | ✅ Complete | 3 pods running, service accessible   |
| **Namespace Usage**   | ✅ Complete | Multiple namespaces created and used |
| **Logs & Rollouts**   | ✅ Complete | Logs captured, rollouts performed    |

### Service Accessibility

- **Primary Service URL:** `http://192.168.49.2:32642`
- **Dashboard URL:** `http://127.0.0.1:46863/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/`
- **Status:** All services responding correctly ✅

---

## 📚 Learning Outcomes

Through this assignment, I have demonstrated proficiency in:

1. **Cluster Management:** Successfully set up and managed a Minikube cluster
2. **Service Deployment:** Deployed and exposed applications using Kubernetes services
3. **Namespace Management:** Created and utilized multiple namespaces for resource organization
4. **Monitoring & Maintenance:** Implemented logging, monitoring, and rollout strategies
5. **Load Balancing:** Configured and tested load-balanced services across multiple pods

---

## 🔗 Repository Information

- **GitHub Repository:** [Kubernetes Assignment](https://github.com/Biniyamseid/Kubernetes.git)
- **Student:** Biniyam Seid (UGR-9483-13)
- **Submission Date:** May 26, 2025

---

<div align="center">

**🎓 End of Assignment Submission**

_Kubernetes Container Orchestration - Biniyam Seid UGR-9483-13_

</div>
