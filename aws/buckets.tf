module "buckets" {
  source = "./buckets"

  default_region         = var.default_region
  log_archive_account_id = aws_organizations_account.log_archive.id
  assume_role            = var.organization_account_access_role
}
