variable "config_logs_bucket_name" {
  type = string
}

variable "flags_region_default" {
  type = object({
    ebs_snapshot_block_public_access                      = optional(bool, true)
    ec2_instance_metadata_require_v2                      = optional(bool, true)
    ssm_service_setting_disable_public_sharing_permission = optional(bool, true)
  })
  default = ({
    ebs_snapshot_block_public_access                      = true
    ec2_instance_metadata_require_v2                      = true
    ssm_service_setting_disable_public_sharing_permission = true
  })
}
