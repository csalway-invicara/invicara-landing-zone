module "guardduty" {
  source = "./guardduty"

  admin_account_id = var.guardduty_admin_account_id
  assume_role      = var.assume_role
}
