resource "kubernetes_namespace" "showcase" {
  metadata {
    name = "devops-showcase"
  }
}

resource "kubernetes_config_map_v1" "showcase_config" {
  metadata {
    name      = "showcase-config"
    namespace = kubernetes_namespace.showcase.metadata[0].name
  }

  data = {
    NODE_ENV   = "production"
    APP_VERSION = "1.0.0"
  }
}

resource "kubernetes_deployment_v1" "showcase_app" {
  metadata {
    name      = "showcase-app"
    namespace = kubernetes_namespace.showcase.metadata[0].name
    labels = {
      app = "showcase-app"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "showcase-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "showcase-app"
        }
      }

      spec {
        container {
          image = var.app_image
          name  = "showcase-app"

          port {
            container_port = 3000
          }

          env_from {
            config_map_ref {
              name = kubernetes_config_map_v1.showcase_config.metadata[0].name
            }
          }

          liveness_probe {
            http_get {
              path = "/health"
              port = 3000
            }
            initial_delay_seconds = 10
            period_seconds        = 15
          }

          readiness_probe {
            http_get {
              path = "/health"
              port = 3000
            }
            initial_delay_seconds = 5
            period_seconds        = 10
          }
        }
      }
    }
  }
}

resource "kubernetes_service_v1" "showcase_service" {
  metadata {
    name      = "showcase-service"
    namespace = kubernetes_namespace.showcase.metadata[0].name
  }

  spec {
    selector = {
      app = "showcase-app"
    }

    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}
