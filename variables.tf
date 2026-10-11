variable "synthetics_global_variables" {
  description = <<EOT
Map of synthetics_global_variables, attributes below
Required:
    - name
Optional:
    - description
    - is_fido
    - is_totp
    - parse_test_id
    - restricted_roles
    - secure
    - tags
    - value
    - value_wo
    - value_wo_version
    - options (block):
        - totp_parameters (optional, block):
            - digits (required)
            - refresh_interval (required)
    - parse_test_options (block):
        - field (optional)
        - local_variable_name (optional)
        - parser (optional, block):
            - type (required)
            - value (optional)
        - type (required)
EOT

  type = map(object({
    name             = string
    description      = optional(string)
    is_fido          = optional(bool)
    is_totp          = optional(bool)
    parse_test_id    = optional(string)
    restricted_roles = optional(set(string))
    secure           = optional(bool)
    tags             = optional(list(string))
    value            = optional(string)
    value_wo         = optional(string)
    value_wo_version = optional(string)
    options = optional(list(object({
      totp_parameters = optional(list(object({
        digits           = number
        refresh_interval = number
      })))
    })))
    parse_test_options = optional(list(object({
      field               = optional(string)
      local_variable_name = optional(string)
      parser = optional(list(object({
        type  = string
        value = optional(string)
      })))
      type = string
    })))
  }))
}

