locals {
  account_id  = data.terraform_remote_state.seeding.outputs.accounts.invicara_us.id
  assume_role = data.terraform_remote_state.seeding.outputs.organization_account_access_role

  bucket_config_log_names = data.terraform_remote_state.shared.outputs.bucket_config_log_names

  flags_global = {
  }

  flags_region = {
    ec2_instance_metadata_require_v2 = false
  }
}
