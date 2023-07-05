variable "ibmcloud_api_key" {
  type        = string
  sensitive   = true
  description = "API Key that will be used to create resources"
}

variable "region" {
  type        = string
  default     = "br-sao"
  description = "Check the Region you want to deploy your vpc"
}

variable "vpc_name" {
  type        = string
  default     = "vpc-catalogo"
  description = "Name for VPC"
}

variable "res_group" {
  type        = string
  default     = "Default"
  description = "Your Resource Group"
}

variable "tags" {
  type        = list(string)
  description = "List of tags"
  default = ["gerenciamento", "vpc"]
}

variable "subnet1" {
  description = "Name of subnet 1"
  default = "subnet-1"
}

variable "subnet2" {
  description = "Name of subnet 2"
  default = "subnet-2"
}

variable "subnet3" {
  description = "Name of subnet 3"
  default = "subnet-3"
}
