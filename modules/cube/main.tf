terraform {
  required_providers {
    ionoscloud = {
      source = "ionos-cloud/ionoscloud"
      # Version im Modul optional; Root pinnt bereits auf 6.7.14
    }
  }
}

data "ionoscloud_template" "example" {
    name            = "Basic Cube XS"
}

resource "ionoscloud_lan" "example" {
  datacenter_id     = var.datacenter_id
  public            = true
  name              = "Lan Example"
}

resource "ionoscloud_cube_server" "example" {
  name              = var.server_name
  image_name        = var.image_name
  template_uuid     = data.ionoscloud_template.example.id
  image_password    = var.passwort_cube
  datacenter_id     = var.datacenter_id
  volume {
    name            = "Volume Example"
    licence_type    = "LINUX" 
    disk_type       = "DAS"
  }
  nic {
    lan             = ionoscloud_lan.example.id
    name            = "Nic Example"
    dhcp            = true
    firewall_active = false
  }
}