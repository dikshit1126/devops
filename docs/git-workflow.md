# Git Workflow Guide

## Branching Model

- `main` for stable releases
- `develop` for integration testing
- `feature/<task-name>` for new work
- `release/<version>` for release preparation
- `hotfix/<task-name>` for urgent production fixes

## Example Command Flow

```bash
git init
git checkout -b main
git checkout -b develop
git checkout -b feature/app-setup
git add .
git commit -m "feat: add Node.js service and tests"
git checkout develop
git merge feature/app-setup
```

## Suggested Commit Breakdown

1. `feat: add Node.js health check service`
2. `test: add API endpoint tests`
3. `build: add Docker and Compose configuration`
4. `ci: add GitHub Actions pipeline`
5. `deploy: add Kubernetes manifests`
6. `infra: add Terraform configuration`
7. `docs: add rubric and workflow documentation`
