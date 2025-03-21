variable "name" {
  description = "Name of the Managed Identity"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for the identity"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "target_resource_id" {
  description = "Target resource ID to assign permissions to"
  type        = string
  default     = null
}

variable "role_definition_name" {
  description = "Name of the role to assign"
  type        = string
  default     = "Reader"
}
