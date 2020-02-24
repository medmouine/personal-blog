resource "kubernetes_service" "personal-blog-lb" {
  metadata {
    labels = {
      app ="personal-blog"
    }
    name = "personal-blog"
    namespace = kubernetes_namespace.personal-blog-ns.metadata[0].name
  }
  spec {
    type = "LoadBalancer"
    port {
      port = 80
      target_port = 80
      protocol = "TCP"
      name = "personal-blog"
    }
    selector = {
      app = "personal-blog"
    }
  }
}
