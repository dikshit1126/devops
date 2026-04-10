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

k8s-apply:
	kubectl apply -f kubernetes/

terraform-init:
	cd terraform && terraform init

terraform-apply:
	cd terraform && terraform apply
