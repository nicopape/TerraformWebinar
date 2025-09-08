terraform {
  required_providers {
    ionoscloud = {
      source = "ionos-cloud/ionoscloud"
      # Version im Modul optional; Root pinnt bereits auf 6.7.14
    }
  }
}


resource "ionoscloud_datacenter" "this" {
  name                = "${var.project_prefix}-${var.name}"
  location            = var.location
  description         = var.description
  sec_auth_protection = var.sec_auth_protection
}
