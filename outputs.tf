output "role_assignments_lookup_id" {
  description = "Map of id values across all role_assignments_lookup, keyed the same as var.role_assignments_lookup"
  value       = { for k, v in data.azurerm_role_assignments.role_assignments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_assignments_lookup_limit_at_scope" {
  description = "Map of limit_at_scope values across all role_assignments_lookup, keyed the same as var.role_assignments_lookup"
  value       = { for k, v in data.azurerm_role_assignments.role_assignments_lookup : k => v.limit_at_scope if v.limit_at_scope != null }
}
output "role_assignments_lookup_principal_id" {
  description = "Map of principal_id values across all role_assignments_lookup, keyed the same as var.role_assignments_lookup"
  value       = { for k, v in data.azurerm_role_assignments.role_assignments_lookup : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "role_assignments_lookup_role_assignments" {
  description = "Map of role_assignments values across all role_assignments_lookup, keyed the same as var.role_assignments_lookup"
  value       = { for k, v in data.azurerm_role_assignments.role_assignments_lookup : k => v.role_assignments if v.role_assignments != null && length(v.role_assignments) > 0 }
}
output "role_assignments_lookup_scope" {
  description = "Map of scope values across all role_assignments_lookup, keyed the same as var.role_assignments_lookup"
  value       = { for k, v in data.azurerm_role_assignments.role_assignments_lookup : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "role_assignments_lookup_tenant_id" {
  description = "Map of tenant_id values across all role_assignments_lookup, keyed the same as var.role_assignments_lookup"
  value       = { for k, v in data.azurerm_role_assignments.role_assignments_lookup : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

