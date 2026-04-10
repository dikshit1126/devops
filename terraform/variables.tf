variable "docker_host" {
  description = "Docker daemon socket used by the Terraform Docker provider."
  type        = string
  default     = "unix:///Users/dikshit/.docker/run/docker.sock"
}

variable "app_image" {
  description = "Docker image tag to build and run."
  type        = string
  default     = "devops-showcase-app:terraform"
}

variable "container_name" {
  description = "Name of the running Docker container."
  type        = string
  default     = "devops-showcase-app"
}

variable "internal_port" {
  description = "Internal application port exposed by the container."
  type        = number
  default     = 3000
}

variable "external_port" {
  description = "Host port mapped to the application container."
  type        = number
  default     = 3000
}
