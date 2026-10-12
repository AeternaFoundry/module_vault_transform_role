variable "transform_roles" {
  description = <<EOT
Map of transform_roles, attributes below
Required:
    - name
    - path
Optional:
    - namespace
    - transformations
EOT

  type = map(object({
    name            = string
    path            = string
    namespace       = optional(string)
    transformations = optional(list(string))
  }))
}

