# Doc https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record

# CF ZONE 1 RESSOURCES
# Décommenter seulement les enregistrements qui ont une valeur renseigné dans le fichier variables.tf

resource "cloudflare_record" "A_record_1_domain_1" {
  zone_id = data.cloudflare_zone.domain_1.id
  name    = var.cf_domain_1_A_1
  value   = var.cf_domain_1_cloud_vm_ip
  type    = "A"
  ttl     = 1
  proxied = true
}

# resource "cloudflare_record" "A_record_2_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1_A_2
#   value   = var.cf_domain_1_oci_frankfurt_master_ip
#   type    = "A"
#   ttl     = 1
#   proxied = true
# }

# resource "cloudflare_record" "A_record_3_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1_A_3
#   value   = var.cf_domain_1_oci_frankfurt_master_ip
#   type    = "A"
#   ttl     = 1
#   proxied = true
# }

# resource "cloudflare_record" "A_record_4_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1_A_4
#   value   = var.cf_domain_1_oci_frankfurt_master_ip
#   type    = "A"
#   ttl     = 1
#   proxied = true
# }

# resource "cloudflare_record" "A_record_6_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1_A_6
#   value   = local.ifconfig_co_json.ip
#   type    = "A"
#   ttl     = 1
#   proxied = true
# }

# resource "cloudflare_record" "A_record_7_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1_A_7
#   value   = local.ifconfig_co_json.ip
#   type    = "A"
#   ttl     = 1
#   proxied = true
# }

# resource "cloudflare_record" "A_record_8_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1_A_8
#   value   = local.ifconfig_co_json.ip
#   type    = "A"
#   ttl     = 1
#   proxied = true
# }


# Décommenter si vous utilisez CloudFlare Pages
# resource "cloudflare_record" "CNAME_record_1_domain_1" {
#   zone_id = data.cloudflare_zone.domain_1.id
#   name    = var.cf_domain_1
#   value   = var.cf_domain_1_front_pages_url
#   type    = "CNAME"
#   ttl     = 1
#   proxied = true
# }
