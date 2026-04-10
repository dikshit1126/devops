output "namespace" {
  value = kubernetes_namespace.showcase.metadata[0].name
}

output "service_name" {
  value = kubernetes_service_v1.showcase_service.metadata[0].name
}
