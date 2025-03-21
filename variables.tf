variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Existing resource group name"
  type        = string
}

variable "location" {
  description = "Region for the Managed Identity"
  type        = string
}

variable "mi_name" {
  description = "Name of the Managed Identity"
  type        = string
}

variable "target_resource_id" {
  description = "Optional ID of a resource to assign role to"
  type        = string
  default     = null
}

variable "role_definition" {
  description = "Role to assign to the Managed Identity"
  type        = string
  default     = "Reader"
}
