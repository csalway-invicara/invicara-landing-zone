resource "aws_organizations_account" "invicara_global" {
  name              = "invicara-global"
  email             = "devops_sandbox@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_invicara_global_blueprint" {
  source = "./organization/blueprints/member"

  default_region          = var.default_region
  account_id              = aws_organizations_account.invicara_global.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}