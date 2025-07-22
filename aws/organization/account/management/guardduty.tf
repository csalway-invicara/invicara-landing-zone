module "guardduty_me_central_1" {
  source           = "./services/guardduty"
  region           = "me-central-1"
  admin_account_id = var.guardduty_admin_account_id
}

## DEFAULT REGIONS (DO NOT DELETE)

module "guardduty_ap_northeast_1" {
  source           = "./services/guardduty"
  region           = "ap-northeast-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_ap_northeast_2" {
  source           = "./services/guardduty"
  region           = "ap-northeast-2"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_ap_northeast_3" {
  source           = "./services/guardduty"
  region           = "ap-northeast-3"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_ap_south_1" {
  source           = "./services/guardduty"
  region           = "ap-south-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_ap_southeast_1" {
  source           = "./services/guardduty"
  region           = "ap-southeast-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_ap_southeast_2" {
  source           = "./services/guardduty"
  region           = "ap-southeast-2"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_ca_central_1" {
  source           = "./services/guardduty"
  region           = "ca-central-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_eu_central_1" {
  source           = "./services/guardduty"
  region           = "eu-central-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_eu_north_1" {
  source           = "./services/guardduty"
  region           = "eu-north-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_eu_west_1" {
  source           = "./services/guardduty"
  region           = "eu-west-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_eu_west_2" {
  source           = "./services/guardduty"
  region           = "eu-west-2"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_eu_west_3" {
  source           = "./services/guardduty"
  region           = "eu-west-3"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_sa_east_1" {
  source           = "./services/guardduty"
  region           = "sa-east-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_us_east_1" {
  source           = "./services/guardduty"
  region           = "us-east-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_us_east_2" {
  source           = "./services/guardduty"
  region           = "us-east-2"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_us_west_1" {
  source           = "./services/guardduty"
  region           = "us-west-1"
  admin_account_id = var.guardduty_admin_account_id
}
module "guardduty_us_west_2" {
  source           = "./services/guardduty"
  region           = "us-west-2"
  admin_account_id = var.guardduty_admin_account_id
}
