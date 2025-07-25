locals {
  organization_root    = data.terraform_remote_state.seeding.outputs.organization_root
  organizational_units = data.terraform_remote_state.seeding.outputs.organizational_units
  accounts             = data.terraform_remote_state.seeding.outputs.accounts
  assume_role          = data.terraform_remote_state.seeding.outputs.organization_account_access_role

  bucket_cloudtrail_trail_name = data.terraform_remote_state.shared.outputs.bucket_cloudtrail_trail_name
  bucket_config_log_names      = data.terraform_remote_state.shared.outputs.bucket_config_log_names

  account_id = local.accounts.management.id
}
