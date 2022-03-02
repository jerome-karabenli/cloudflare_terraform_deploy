# Il s'agit des regles que vous souhaitez appliquer
# Doc https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/filter
resource "cloudflare_filter" "domain_1_rule_1" {
  zone_id = data.cloudflare_zone.domain_1.id
  description = "autoriser seulement mon ip"
  expression = "(http.host eq \"${var.cf_domain_1}\" and not ip.src in {${local.ifconfig_co_json.ip}})"
}

# Il s'agit de l'action a prendre si les regles précédentes ne correspondent pas. 
# Doc https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/firewall_rule
resource "cloudflare_firewall_rule" "domain_1_rule_1" {
  zone_id = data.cloudflare_zone.domain_1.id
  description = "autoriser seulement mon ip ${local.ifconfig_co_json.ip}"
  filter_id = cloudflare_filter.domain_1_rule_1.id
  action = "block"
}

