resource "aws_organizations_account" "networking" {
  name      = "Networking"
  email     = "devops+networking@invicara.com"
  parent_id = aws_organizations_organizational_unit.infrastrcture.id
  role_name = var.organization_account_access_role
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

# module "account_networking_blueprint" {
#   source = "./organization/blueprints/member"

#   default_region          = var.default_region
#   account_id              = aws_organizations_account.networking.id
#   assume_role             = var.organization_account_access_role
#   config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
# }

# resource "aws_account_region" "networking_me_central_1" {
#   account_id  = aws_organizations_account.networking.id
#   region_name = "me-central-1"
#   enabled     = true
# }

# module "account_networking_me_central_1" {
#   source = "./organization/blueprints/member/region"

#   region                  = "me-central-1"
#   account_id              = aws_organizations_account.networking.id
#   assume_role             = var.organization_account_access_role
#   config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
# }
