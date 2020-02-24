provider "google" {
  project     = "medmouine-cluster"
  region      = "us-east1"
  zone        = "us-east1-c"
}

module "personal-blog" {
  source = "./k8s"
}

module "personal-blog-record" {
  source = "./record"
  external_ip = module.personal-blog.personal-blog-lb-external-ip
  managed_zone_dns =  data.google_dns_managed_zone.medcodes-managed-zone.dns_name
  managed_zone_name = data.google_dns_managed_zone.medcodes-managed-zone.name
}

output "lb_ip" {
  value = module.personal-blog.personal-blog-lb-external-ip
}

output "record" {
  value = module.personal-blog-record.record
}
