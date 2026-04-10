output "container_name" {
  value = docker_container.showcase_app.name
}

output "app_url" {
  value = "http://localhost:${var.external_port}"
}

output "image_name" {
  value = docker_image.showcase_app.name
}
