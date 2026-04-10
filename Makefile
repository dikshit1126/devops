install:
	npm install

build:
	npm run build

test:
	npm test

docker-build:
	docker build -t devops-showcase-app:local .

docker-run:
	docker run -p 3000:3000 devops-showcase-app:local

terraform-init:
	cd terraform && terraform init

terraform-validate:
	cd terraform && terraform validate

terraform-plan:
	cd terraform && terraform plan

terraform-apply:
	cd terraform && terraform apply

terraform-destroy:
	cd terraform && terraform destroy
