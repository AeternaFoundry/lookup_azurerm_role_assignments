data "azurerm_role_assignments" "role_assignments_lookup" {
  for_each = var.role_assignments_lookup

  scope          = each.value.scope
  limit_at_scope = each.value.limit_at_scope
  principal_id   = each.value.principal_id
  tenant_id      = each.value.tenant_id
}

