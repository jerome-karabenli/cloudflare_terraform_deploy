# ORIGIN CERTS DOMAIN 1
resource "tls_private_key" "domain_1" {
  algorithm = "RSA"
  rsa_bits  = "4096" # vous pouvez changer la valeur et passer a 2048 vous accelerez vos requetes mais réduirez aussi la sécurité
}

resource "tls_cert_request" "domain_1" {
  key_algorithm   = tls_private_key.domain_1.algorithm
  private_key_pem = tls_private_key.domain_1.private_key_pem

  subject {
    common_name  = var.cf_domain_1
    organization = "Terraform ${var.cf_domain_1 }"
  }
}

# Doc https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/origin_ca_certificate
resource "cloudflare_origin_ca_certificate" "domain_1" {
  csr                = tls_cert_request.domain_1.cert_request_pem
  hostnames          = [ "${ var.cf_domain_1 }", "*.${ var.cf_domain_1 }" ]
  request_type       = "origin-rsa"
  requested_validity = 5475 # Pour avoir une clé valide 365 jours
}

# Stockage de la clé privé
resource "local_file" "cf_origin_private_key_domain_1" {
    content  = tls_private_key.domain_1.private_key_pem
    filename = "${var.cf_origin_ca_files_path_domain_1}/privkey.pem"
    file_permission = "0400"   
}

# Stockage de la clé publique
resource "local_file" "cf_origin_certificate_key_domain_1" {
    content  = cloudflare_origin_ca_certificate.domain_1.certificate
    filename = "${var.cf_origin_ca_files_path_domain_1}/cert.pem"
    file_permission = "0400"
}
