resource "aws_organizations_account" "account_2" {
  name              = "invicara account 2"
  email             = "devops+account2@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_account_2_blueprint" {
  source = "./organization/blueprints/member"

  default_region          = var.default_region
  account_id              = aws_organizations_account.account_2.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}