variable "cf_email" {} # variables.auto.tfvars
variable "cf_api_key" {} # variables.auto.tfvars
variable "cf_api_user_service_key" {} # variables.auto.tfvars
variable "cf_domain_1" {} # variables.auto.tfvars
variable "cf_origin_ca_files_path_domain_1" {} # variables.auto.tfvars

# Enregistrements DNS
variable "cf_domain_1_A_1" {
    default = ""
}

variable "cf_domain_1_A_2" {
    default = ""
}

variable "cf_domain_1_A_3" {
    default = ""
}

variable "cf_domain_1_A_4" {
    default = ""
}

variable "cf_domain_1_A_5" {
    default = ""
}

variable "cf_domain_1_A_6" {
    default = ""
}

variable "cf_domain_1_A_7" {
    default = ""
}

variable "cf_domain_1_A_8" {
    default = ""
}

variable "cf_domain_1_A_9" {
    default = ""
}

variable "cf_domain_1_A_10" {
    default = ""
}

# Si vous voulez faire pointer un sous domaine vers une vm cloud, renseigner l'IP ici
variable "cf_domain_1_cloud_vm_ip" {
    default = ""
}

# Si vous utilisez CloudFlare Pages pour hebergé votre frontend
variable "cf_domain_1_front_pages_url" {
    default = ""
}


# Variables nécessaire uniquement pour zoho mail
variable "cf_domain_1_TXT_1" {
    default = ""
}

variable "cf_domain_1_MX_1" {
    default = ""
}

variable "cf_domain_1_MX_2" {
    default = ""
}

variable "cf_domain_1_MX_3" {
    default = ""
}

variable "cf_domain_1_TXT_2" {
    default = ""
}

variable "cf_domain_1_TXT_name_3" {
    default = ""
}

variable "cf_domain_1_TXT_value_3" {
    default = ""
}
