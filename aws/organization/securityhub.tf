module "securityhub_organization" {
  source = "../modules/securityhub"
  providers = {
    aws.root  = aws.root-default-region
    aws.admin = aws.security-audit-default-region
  }
  organization_root_id = var.organization_root_id
}
