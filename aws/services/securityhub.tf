module "securityhub" {
  source = "./securityhub"

  default_region       = var.default_region
  admin_account_id     = var.securityhub_admin_account_id
  assume_role          = var.assume_role
  organization_root_id = var.organization_root_id
}
