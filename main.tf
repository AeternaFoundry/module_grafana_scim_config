resource "grafana_scim_config" "scim_configs" {
  for_each = var.scim_configs

  enable_group_sync            = each.value.enable_group_sync
  enable_user_sync             = each.value.enable_user_sync
  reject_non_provisioned_users = each.value.reject_non_provisioned_users
  org_id                       = each.value.org_id
}

