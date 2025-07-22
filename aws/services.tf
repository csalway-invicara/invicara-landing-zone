module "services" {
  source = "./services"

  default_region               = var.default_region
  cloudtrail_trail_bucket_name = module.buckets.cloudtrail_trail_bucket_name
  guardduty_admin_account_id   = aws_organizations_account.security_audit.id
  securityhub_admin_account_id = aws_organizations_account.security_audit.id
  assume_role                  = var.organization_account_access_role
  organization_root_id         = aws_organizations_organization.this.roots[0].id
}
