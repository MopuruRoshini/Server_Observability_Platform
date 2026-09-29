# Kubernetes Deployment

This directory contains Kubernetes deployment configuration for the Server Observability Platform.

## Deployment

The application can be deployed to a Kubernetes cluster using the configuration files in this directory.

### Prerequisites

- Docker
- Kubernetes cluster
- kubectl

### Apply the deployment

From the project root:

```bash
kubectl apply -f deploy/kubernetes/ 