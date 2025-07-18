resource "aws_guardduty_detector" "this" {
  enable = true
}

resource "aws_guardduty_organization_admin_account" "this" {
  admin_account_id = var.guardduty_admin_account_id
}