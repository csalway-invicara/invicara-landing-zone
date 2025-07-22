module "securityhub" {
  source = "./services/securityhub"

  organization_root_id = var.organization_root_id
}
