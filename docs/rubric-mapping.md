# Rubric Mapping

## CO2: Version Control and Collaboration

- Use `main`, `develop`, and `feature/*` branches
- Make meaningful commits for app, Docker, CI/CD, and Terraform work
- Use pull requests with the included template
- Add collaborators and request reviews in GitHub

## CO3: CI/CD Pipeline Implementation

- GitHub Actions pipeline includes build, test, image push, and deployment stages
- Pipeline triggers on pull requests and pushes
- Deployment is automated for the `main` branch

## CO4: Containerization and Deployment

- Dockerfile containerizes the app
- Docker Compose supports local execution
- Terraform automates Docker image build and container deployment

## CO5: Infrastructure as Code

- Terraform provisions Docker deployment resources in a repeatable way
- Infrastructure definitions can be versioned and reviewed like application code

## How to Maximize Marks

- Initialize Git and create branches before submission
- Make at least 6 to 10 clean commits instead of one large commit
- Push to GitHub and show pull request history
- Replace placeholder usernames and registry values
- Capture screenshots of Actions runs, Docker container output, and Terraform execution
