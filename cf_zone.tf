data "cloudflare_zone" "domain_1" {
  name = var.cf_domain_1
}

# Par defaut j'ai activé toutes les sécurités possibles avec un compte gratuit
resource "cloudflare_zone_settings_override" "domain_1" {
    zone_id = data.cloudflare_zone.domain_1.id
    settings {
        always_online            = "on"
        always_use_https         = "on"
        min_tls_version          = "1.2"
        tls_1_3                  = "on"
        #http2                    = "on" #value is read-only
        http3                    = "on"
        ip_geolocation           = "on"
        brotli                   = "on"
        challenge_ttl            = 1800
        security_level           = "high"
        ssl                      = "strict"
        opportunistic_encryption = "on"
        automatic_https_rewrites = "on"
        rocket_loader            = "on"
        pseudo_ipv4              = "add_header"
        #mirage                   = "on" #value is read-only
        #waf                      = "on" #free account cannot edit
        minify {
            css = "on"
            js = "on"
            html = "on"
        }
        security_header {
            enabled = true
        }
    }
}


