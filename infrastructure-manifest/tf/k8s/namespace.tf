resource "kubernetes_namespace" "personal-blog-ns" {
  metadata {
    name = "personal-blog"
  }
}
