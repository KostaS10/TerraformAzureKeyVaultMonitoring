# Authenticating SP

variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}

# Resource deployment

variable "rg" {
  type = string
}
variable "location" {
  type    = string
  default = "westeurope"
}
variable "keyvault_name" {
  type = string
}
variable "logicapp_name" {
	type = string
}
