module "securityhub" {
  source = "./securityhub"
  providers = {
    aws.management = aws.management-default-region
    aws.admin      = aws.security-default-region
  }
  organization_root_id = local.organization_root.id
}
