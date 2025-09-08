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

variable "datacenter_id" {
  description = "The ID of the datacenter where the Cube server will be deployed."
  type        = string
}