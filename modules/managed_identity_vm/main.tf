resource "azurerm_user_assigned_identity" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_role_assignment" "this" {
  count = var.target_resource_id != null ? 1 : 0

  scope                = var.target_resource_id
  role_definition_name = var.role_definition_name
  principal_id         = azurerm_user_assigned_identity.this.principal_id
}
