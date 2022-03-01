resource "cloudflare_filter" "domain_1_rule_1" {
  zone_id = data.cloudflare_zone.domain_1.id
  description = "autoriser seulement mon ip"
  expression = "(http.host eq \"${var.cf_domain_1}\" and not ip.src in {${local.ifconfig_co_json.ip}})"
}

resource "cloudflare_firewall_rule" "domain_1_rule_1" {
  zone_id = data.cloudflare_zone.domain_1.id
  description = "autoriser seulement mon ip ${local.ifconfig_co_json.ip}"
  filter_id = cloudflare_filter.domain_1_rule_1.id
  action = "block"
}

