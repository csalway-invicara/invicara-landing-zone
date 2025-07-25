data "terraform_remote_state" "seeding" {
  backend = "s3"

  config = {
    region = "eu-west-1"
    bucket = "terraform-state-euw1-105561173654"
    key    = "seeding.tfstate"
  }
}

locals {
  organization_root                = data.terraform_remote_state.seeding.outputs.organization_root
  organizational_units             = data.terraform_remote_state.seeding.outputs.organizational_units
  accounts                         = data.terraform_remote_state.seeding.outputs.accounts
  organization_account_access_role = data.terraform_remote_state.seeding.outputs.organization_account_access_role
}
