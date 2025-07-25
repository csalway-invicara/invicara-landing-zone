locals {
  account_id  = data.terraform_remote_state.seeding.outputs.accounts.security_audit.id
  assume_role = data.terraform_remote_state.seeding.outputs.organization_account_access_role

  bucket_config_log_names = data.terraform_remote_state.shared.outputs.bucket_config_log_names
}
