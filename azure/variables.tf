variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"

}

variable "account_replication_type" {
  description = "The replication strategy of the storage account."
  type        = string
  default     = "LRS"

}

variable "resource_group_name" {
  description = "Name for resource group"
  type        = string
  default     = "rgCursoTerraform"
}

variable "storage_account_name" {
  description = "Name for storage account"
  type        = string
  default     = "stCursoTerraform"
}

variable "container_name" {
  description = "Name for storage container"
  type        = string
  default     = "containerCursoTerraform"
}