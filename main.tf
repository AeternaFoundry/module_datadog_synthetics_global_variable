resource "datadog_synthetics_global_variable" "synthetics_global_variables" {
  for_each = var.synthetics_global_variables

  name             = each.value.name
  description      = each.value.description
  is_fido          = each.value.is_fido
  is_totp          = each.value.is_totp
  parse_test_id    = each.value.parse_test_id
  restricted_roles = each.value.restricted_roles
  secure           = each.value.secure
  tags             = each.value.tags
  value            = each.value.value
  value_wo         = each.value.value_wo
  value_wo_version = each.value.value_wo_version

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      dynamic "totp_parameters" {
        for_each = options.value.totp_parameters != null ? options.value.totp_parameters : []
        content {
          digits           = totp_parameters.value.digits
          refresh_interval = totp_parameters.value.refresh_interval
        }
      }
    }
  }

  dynamic "parse_test_options" {
    for_each = each.value.parse_test_options != null ? each.value.parse_test_options : []
    content {
      field               = parse_test_options.value.field
      local_variable_name = parse_test_options.value.local_variable_name
      dynamic "parser" {
        for_each = parse_test_options.value.parser != null ? parse_test_options.value.parser : []
        content {
          type  = parser.value.type
          value = parser.value.value
        }
      }
      type = parse_test_options.value.type
    }
  }
}

