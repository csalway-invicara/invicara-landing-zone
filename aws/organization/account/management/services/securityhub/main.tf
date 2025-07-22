resource "aws_securityhub_account" "this" {
  enable_default_standards = false
}

resource "aws_securityhub_organization_admin_account" "this" {
  admin_account_id = var.admin_account_id
}