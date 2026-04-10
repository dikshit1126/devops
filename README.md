# DevOps Showcase Project

This project is designed to score strongly against a DevOps course rubric. It includes:

- Version control and collaboration guidance
- Automated CI/CD with GitHub Actions
- Docker-based containerization
- Terraform-based deployment automation
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

## Terraform Automation

Terraform is the primary deployment method in this project. It provisions the namespace, config map, deployment, and service in the Kubernetes cluster from code:

```bash
cd terraform
terraform init
terraform validate
terraform plan -var="app_image=ghcr.io/dikshit1126/devops:latest"
terraform apply -var="app_image=ghcr.io/dikshit1126/devops:latest"
```

If your final GitHub repo name differs, update the image in [terraform/variables.tf](/Users/dikshit/Desktop/devops/terraform/variables.tf) or pass a different value with `-var`.

## CI/CD Workflow

The GitHub Actions workflow in `.github/workflows/ci-cd.yml` has three automated stages:

1. Build and test the application
2. Build and push the Docker image
3. Deploy infrastructure and application changes using Terraform on pushes to `main`

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
4. Explain the Terraform resources and variables
5. Show how CI/CD applies Terraform automatically
6. Walk through the GitHub Actions pipeline
