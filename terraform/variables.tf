variable "kubeconfig_path" {
  description = "Path to the kubeconfig file used to authenticate to the Kubernetes cluster."
  type        = string
  default     = "~/.kube/config"
}

variable "app_image" {
  description = "Container image to deploy."
  type        = string
  default     = "ghcr.io/dikshit1126/devops:latest"
}
