output "synthetics_global_variables_id" {
  description = "Map of id values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no id are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synthetics_global_variables_description" {
  description = "Map of description values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no description are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.description if v.description != null && length(v.description) > 0 }
}
output "synthetics_global_variables_is_fido" {
  description = "Map of is_fido values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no is_fido are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.is_fido if v.is_fido != null }
}
output "synthetics_global_variables_is_totp" {
  description = "Map of is_totp values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no is_totp are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.is_totp if v.is_totp != null }
}
output "synthetics_global_variables_name" {
  description = "Map of name values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no name are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synthetics_global_variables_options" {
  description = "Map of options values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no options are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.options if v.options != null && length(v.options) > 0 }
}
output "synthetics_global_variables_parse_test_id" {
  description = "Map of parse_test_id values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no parse_test_id are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.parse_test_id if v.parse_test_id != null && length(v.parse_test_id) > 0 }
}
output "synthetics_global_variables_parse_test_options" {
  description = "Map of parse_test_options values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no parse_test_options are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.parse_test_options if v.parse_test_options != null && length(v.parse_test_options) > 0 }
}
output "synthetics_global_variables_restricted_roles" {
  description = "Map of restricted_roles values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no restricted_roles are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.restricted_roles if v.restricted_roles != null && length(v.restricted_roles) > 0 }
}
output "synthetics_global_variables_secure" {
  description = "Map of secure values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no secure are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.secure if v.secure != null }
}
output "synthetics_global_variables_tags" {
  description = "Map of tags values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no tags are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "synthetics_global_variables_value" {
  description = "Map of value values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no value are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}
output "synthetics_global_variables_value_wo_version" {
  description = "Map of value_wo_version values across all synthetics_global_variables, keyed the same as var.synthetics_global_variables except keys with no value_wo_version are omitted"
  value       = { for k, v in datadog_synthetics_global_variable.synthetics_global_variables : k => v.value_wo_version if v.value_wo_version != null && length(v.value_wo_version) > 0 }
}

