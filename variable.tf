variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "subscription_id"{
  type=string
}
variable "tenant_id"{
  type=string
}

variable "owner"{
  type        = string
  description = "Owner of the application, workload, or service"
  default     = "mcti"
}

variable "env"{
  type        = string
  description = "Deployment environment of the application, workload, or service"
  default     = "lab"
}

variable "region"{
  type        = string
  description = "Azure region where the resource is deployed"
  default     = "central-canada"
}

variable "name" {
  type        = string
  description = "Name of the application, workload, or service"
  default     = "k9s"
}

variable "convention" {
  type        = string
  description = "Define naming convention"
  default     = "${var.name}-${var.owner}-${var.env}-${var.region}"
}
variable "resource_group_name" {
   description  = "Name of the resource group in which resources will be created"
   type         = string
   default      = "rg-${var.convention}"
}

variable "location" {
   type         =  string
   default      = "Canada Central"
   description  = "Location where resources will be created"
}

variable "tags" {
   description = "Map of the tags to use for the resources that are deployed"
   type        = map(string)
   default     = {
      environment = "mcitlab"
   }
}

variable "prefix" {
  type      = string
  default   = "mcit"
}

