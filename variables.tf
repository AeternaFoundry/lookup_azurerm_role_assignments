variable "role_assignments_lookup" {
  description = <<EOT
Map of role_assignments_lookup, attributes below
Required:
    - scope
Optional:
    - limit_at_scope
    - principal_id
    - tenant_id
EOT

  type = map(object({
    scope          = string
    limit_at_scope = optional(bool)
    principal_id   = optional(string)
    tenant_id      = optional(string)
  }))
}

