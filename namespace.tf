# Create traefik namespace
resource "kubernetes_namespace" "traefik_namespace" {
  metadata {
    name = var.namespace
  }
}