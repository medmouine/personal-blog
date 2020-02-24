output "personal-blog-lb-external-ip" {
  value = kubernetes_service.personal-blog-lb.load_balancer_ingress[0].ip
}
