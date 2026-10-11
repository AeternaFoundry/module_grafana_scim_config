variable "scim_configs" {
  description = <<EOT
Map of scim_configs, attributes below
Required:
    - enable_group_sync
    - enable_user_sync
    - reject_non_provisioned_users
Optional:
    - org_id
EOT

  type = map(object({
    enable_group_sync            = bool
    enable_user_sync             = bool
    reject_non_provisioned_users = bool
    org_id                       = optional(string)
  }))
}

