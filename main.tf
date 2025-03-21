module "managed_identity_vm" {
  source               = "./modules/managed_identity_vm"
  name                 = var.mi_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  target_resource_id   = var.target_resource_id
  role_definition_name = var.role_definition
}
