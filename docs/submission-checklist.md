# Submission Checklist

## Before Submission

- Push `main`, `develop`, and at least one `feature/*` branch to GitHub
- Keep the pull request visible in the repository history
- Confirm GitHub Actions runs successfully on push or pull request
- Confirm the Docker image name matches the GitHub repository
- Confirm Kubernetes and Terraform files reference the same image

## Evidence to Capture

- Repository branch list showing `main`, `develop`, and `feature/readme-polish`
- Commit history showing multiple meaningful commits
- Pull request page and merged status
- GitHub Actions workflow run status
- Docker build or image push result
- Kubernetes manifests in the repository
- Terraform files in the repository

## Viva / Demo Talking Points

- Version control: explain branch strategy, commits, PR template, and CODEOWNERS
- CI/CD: explain build, test, Docker push, and deployment stages
- Containerization: explain Dockerfile, health check, and Compose
- Orchestration: explain Deployment, Service, and HPA manifests
- IaC: explain how Terraform recreates infrastructure consistently

## Final Repository Links

- Main branch: `https://github.com/dikshit1126/devops/tree/main`
- Develop branch: `https://github.com/dikshit1126/devops/tree/develop`
- Pull request page: `https://github.com/dikshit1126/devops/pulls`
