# Affiche votre adresse IP publique
output "my_ip_addr" {
  value = local.ifconfig_co_json.ip
}