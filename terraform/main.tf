resource "docker_image" "showcase_app" {
  name = var.app_image

  build {
    context    = abspath("${path.module}/..")
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "showcase_app" {
  name     = var.container_name
  image    = docker_image.showcase_app.image_id
  restart  = "unless-stopped"
  must_run = true

  env = [
    "NODE_ENV=production",
    "APP_VERSION=1.0.0",
    "PORT=${var.internal_port}"
  ]

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
