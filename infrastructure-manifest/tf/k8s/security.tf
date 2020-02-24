//resource "kubernetes_ingress" "ingress-personal-blog" {
//  metadata {
//    name = "personal-blog-ingress"
//    namespace = kubernetes_namespace.personal-blog-ns.metadata[0].name
//    annotations = {
//      "ingress.gcp.kubernetes.io/pre-shared-cert" = "personal1"
//    }
//  }
//  spec {
//    tls {
//      secret_name = kubernetes_secret.tls-secret.metadata[0].name
//    }
//    rule {
//      host = "med.codes"
//      http {
//        path {
//          backend {
//            service_name = kubernetes_service.personal-blog-lb.metadata[0].name
//            service_port = kubernetes_service.personal-blog-lb.spec[0].port[0].port
//          }
//        }
//      }
//    }
//  }
//}
//
//resource "kubernetes_secret" "tls-secret" {
//  metadata {
//    name = "personal-tls1"
//    namespace = kubernetes_namespace.personal-blog-ns.metadata[0].name
//  }
//
//  data = {
//    "tls.crt" = file("/home/med/.ssl_cert/personal.crt")
//    "tls.key" = file("/home/med/.ssl_cert/personal.key")
//  }
//  type = "tls"
//}
