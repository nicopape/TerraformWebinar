variable "server_name" {
  description = "The name of the Cube server."
  type        = string
  default     = "Admin1Nico"
  
}

variable "image_name" {
  description = "The name of the image to use for the Cube server."
  type        = string
  default     = "ubuntu:latest"
  
}

variable "passwort_cube" {
  description = "The password for the Cube server."
  type        = string
  default     = "Welcome2025"
}