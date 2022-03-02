# Doc https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs
terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  email   = var.cf_email
  api_key = var.cf_api_key
  api_user_service_key = var.cf_api_user_service_key
}