variable "project_prefix" {
  description = "Namenspräfix für alle Ressourcen"
  type        = string
  default     = "Admin"
}

variable "dc_name" {
  description = "Name des Datacenters"
  type        = string
  default     = "Webinar-DC"
}

variable "dc_location" {
  description = "IONOS Standort (z. B. de/txl, de/fra, es/vit)"
  type        = string
  default     = "de/fra"
}

variable "dc_description" {
  description = "Beschreibung für das Datacenter"
  type        = string
  default     = "Ich teste gerade Terraform mit IONOS Cloud"
}

variable "dc_sec_auth_protection" {
  description = "Secure Authentication Protection aktivieren?"
  type        = bool
  default     = false
}

variable "server_name" {
  description = "The name of the Cube server."
  type        = string  
}

variable "image_name" {
  description = "The name of the image to use for the Cube server."
  type        = string  
}

variable "passwort_cube" {
  description = "The password for the Cube server."
  type        = string
}