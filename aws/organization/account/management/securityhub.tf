module "securityhub" {
  source = "./services/securityhub"

  admin_account_id = var.securityhub_admin_account_id
}
