resource "kubernetes_deployment" "personal-blog-deployment" {
  metadata {
    labels = {
      app = "personal-blog"
    }
    name = "personal-blog"
    namespace = kubernetes_namespace.personal-blog-ns.metadata[0].name
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "personal-blog"
      }
    }
    template {
      metadata {
        labels = {
          app = "personal-blog"
        }
      }
      spec {
        container {
          image = "medmouine/personal-blog:latest"
          name = "personal-blog"
          port {
            container_port = 80
            name = "personal-blog"
          }
        }
      }
    }
  }
}
