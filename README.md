# DevOps Showcase Project

This project is designed to score strongly against a DevOps course rubric. It includes:

- Version control and collaboration guidance
- Automated CI/CD with GitHub Actions
- Docker-based containerization
- Kubernetes deployment manifests
- Terraform-based Infrastructure as Code

## Project Overview

The application is a lightweight Node.js API with two endpoints:

- `/` returns project metadata
- `/health` returns a health response for probes and monitoring

## Run Locally

```bash
npm install
npm start
```

Test the app:

```bash
npm test
```

## Docker

Build and run the container:

```bash
docker build -t devops-showcase-app .
docker run -p 3000:3000 devops-showcase-app
```

Or with Compose:

```bash
docker compose up --build
```

## Kubernetes Deployment

The default image is set to `ghcr.io/dikshit8822/devops:latest`. If your final GitHub repo name differs, update the image in `kubernetes/deployment.yaml` and `terraform/variables.tf`, then apply:

```bash
kubectl apply -f kubernetes/
```

## Terraform IaC

Terraform provisions the namespace, config map, deployment, and service in your Kubernetes cluster:

```bash
cd terraform
terraform init
terraform apply -var="app_image=ghcr.io/dikshit8822/devops:latest"
```

## CI/CD Workflow

The GitHub Actions workflow in `.github/workflows/ci-cd.yml` has three automated stages:

1. Build and test the application
2. Build and push the Docker image
3. Deploy to Kubernetes on pushes to `main`

## Collaboration Workflow

Use this branch strategy to demonstrate strong Git practice:

- `main`: production-ready code
- `develop`: integration branch
- `feature/<name>`: feature branches
- `hotfix/<name>`: urgent production fixes

Recommended Git process:

1. Create an issue
2. Create a feature branch from `develop`
3. Commit in small logical units
4. Open a pull request into `develop`
5. Merge into `main` after review and successful CI

## Suggested Demo Script

1. Show commit history and branching strategy
2. Run `npm test`
3. Build the Docker image
4. Show Kubernetes manifests
5. Explain Terraform resources
6. Walk through the GitHub Actions pipeline
