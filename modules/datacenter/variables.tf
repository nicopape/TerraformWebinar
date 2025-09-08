variable "project_prefix" {
  description = "Namenspräfix"
  type        = string
}

variable "name" {
  description = "Datacenter Name"
  type        = string
}

variable "location" {
  description = "IONOS Standort (z. B. de/txl)"
  type        = string
}

variable "description" {
  description = "Beschreibung"
  type        = string
  default     = null
}

variable "sec_auth_protection" {
  description = "Secure Authentication Protection aktivieren?"
  type        = bool
  default     = false
}
