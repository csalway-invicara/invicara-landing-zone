## Opt-in Regions


## Default Regions

module "ec2_default_regions" {
  source      = "../../modules/aws/ec2/default-regions/accounts/member"
  account_id  = var.account_id
  assume_role = var.assume_role
}
