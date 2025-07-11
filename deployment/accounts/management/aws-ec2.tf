## Opt-in Regions

module "ec2_me-central-1" {
  source    = "../../modules/aws/ec2"
  providers = { aws = aws.me-central-1 }
}

## Default Regions

module "ec2_default_regions" {
  source = "../../modules/aws/ec2/default-regions/accounts/identity"
}
