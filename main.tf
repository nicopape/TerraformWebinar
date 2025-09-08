terraform {
  required_version = ">= 1.5.0"
  required_providers {
    ionoscloud = {
      source  = "ionos-cloud/ionoscloud"
      version = "6.7.14"
    }
  }
}

module "datacenter" {
  source              = "./modules/datacenter"

  project_prefix      = var.project_prefix
  name                = var.dc_name
  location            = var.dc_location
  description         = var.dc_description
  sec_auth_protection = var.dc_sec_auth_protection
}
