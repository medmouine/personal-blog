resource "google_dns_record_set" "personal-blog" {
  managed_zone = var.managed_zone_name
  name = var.managed_zone_dns
  rrdatas = [var.external_ip]
  ttl = 300
  type = "A"
}
//
//resource "google_compute_ssl_certificate" "cert" {
//  certificate = file("/home/med/.ssl_cert/personal.crt")
//  private_key = file("/home/med/.ssl_cert/personal.key")
//  name = "personal1"
//}
