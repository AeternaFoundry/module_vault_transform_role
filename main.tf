resource "vault_transform_role" "transform_roles" {
  for_each = var.transform_roles

  name            = each.value.name
  path            = each.value.path
  namespace       = each.value.namespace
  transformations = each.value.transformations
}

