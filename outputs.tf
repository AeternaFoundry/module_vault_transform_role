output "transform_roles_id" {
  description = "Map of id values across all transform_roles, keyed the same as var.transform_roles except keys with no id are omitted"
  value       = { for k, v in vault_transform_role.transform_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transform_roles_name" {
  description = "Map of name values across all transform_roles, keyed the same as var.transform_roles except keys with no name are omitted"
  value       = { for k, v in vault_transform_role.transform_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "transform_roles_namespace" {
  description = "Map of namespace values across all transform_roles, keyed the same as var.transform_roles except keys with no namespace are omitted"
  value       = { for k, v in vault_transform_role.transform_roles : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "transform_roles_path" {
  description = "Map of path values across all transform_roles, keyed the same as var.transform_roles except keys with no path are omitted"
  value       = { for k, v in vault_transform_role.transform_roles : k => v.path if v.path != null && length(v.path) > 0 }
}
output "transform_roles_transformations" {
  description = "Map of transformations values across all transform_roles, keyed the same as var.transform_roles except keys with no transformations are omitted"
  value       = { for k, v in vault_transform_role.transform_roles : k => v.transformations if v.transformations != null && length(v.transformations) > 0 }
}

