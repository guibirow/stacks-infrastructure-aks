############################################
# AUTHENTICATION
############################################
# RELYING PURELY ON ENVIRONMENT VARIABLES as the user can control these from their own environment
############################################
# NAMING
############################################

variable "name_company" {
  type = string
}

variable "name_project" {
  type = string
}

variable "name_component" {
  type = string
}

variable "name_environment" {
  type = string
}

variable "stage" {
  type = string
}

variable "attributes" {
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}

# Each region must have corresponding a shortend name for resource naming purposes
variable "location_name_map" {
  type = map(string)

  default = {
    northeurope   = "eun"
    westeurope    = "euw"
    uksouth       = "uks"
    ukwest        = "ukw"
    eastus        = "use"
    eastus2       = "use2"
    westus        = "usw"
    eastasia      = "ase"
    southeastasia = "asse"
  }
}

############################################
# AZURE INFORMATION
############################################

variable "resource_group_location" {
  type = string
}

variable "dns_zone" {
  type = string
}

variable "internal_dns_zone" {
  type = string
}

variable "pfx_password" {
  type = string
}

# ###########################
# # CONDITIONALS
# ##########################
variable "create_dns_zone" {
  type = bool
}

variable "create_aksvnet" {
  type = bool
}

variable "create_user_identity" {
  type = bool
}

variable "cluster_version" {
  type = string
}

variable "create_acr" {
  type = bool
}

variable "acr_resource_group" {
  type = string
}

variable "is_cluster_private" {
  type        = bool
  description = "Set cluster private - API only accessible over internal network"
}

variable "log_application_type" {
  type = string
}

variable key_vault_name {
  type        = string
  description = "Key Vault name - if not specificied will default to computed naming convention"
}

variable acme_email {
  type        = string
  description = "Email for Acme registration, must be a valid email"
}
