output "scim_configs_id" {
  description = "Map of id values across all scim_configs, keyed the same as var.scim_configs except keys with no id are omitted"
  value       = { for k, v in grafana_scim_config.scim_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "scim_configs_enable_group_sync" {
  description = "Map of enable_group_sync values across all scim_configs, keyed the same as var.scim_configs except keys with no enable_group_sync are omitted"
  value       = { for k, v in grafana_scim_config.scim_configs : k => v.enable_group_sync if v.enable_group_sync != null }
}
output "scim_configs_enable_user_sync" {
  description = "Map of enable_user_sync values across all scim_configs, keyed the same as var.scim_configs except keys with no enable_user_sync are omitted"
  value       = { for k, v in grafana_scim_config.scim_configs : k => v.enable_user_sync if v.enable_user_sync != null }
}
output "scim_configs_org_id" {
  description = "Map of org_id values across all scim_configs, keyed the same as var.scim_configs except keys with no org_id are omitted"
  value       = { for k, v in grafana_scim_config.scim_configs : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "scim_configs_reject_non_provisioned_users" {
  description = "Map of reject_non_provisioned_users values across all scim_configs, keyed the same as var.scim_configs except keys with no reject_non_provisioned_users are omitted"
  value       = { for k, v in grafana_scim_config.scim_configs : k => v.reject_non_provisioned_users if v.reject_non_provisioned_users != null }
}

