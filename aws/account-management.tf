resource "aws_organizations_account" "management" {
  name      = "invicara-main"
  email     = "devops@invicara.com"
  parent_id = aws_organizations_organization.this.roots[0].id
  lifecycle {
    prevent_destroy = true
  }
}

module "account_management" {
  source = "./organization/accounts/management"

  default_region          = var.default_region
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}