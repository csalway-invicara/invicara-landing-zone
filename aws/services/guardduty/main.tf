module "region_me_central_1" {
  source           = "./region"
  region           = "me-central-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}

## DEFAULT REGIONS (DO NOT DELETE)

module "region_ap_northeast_1" {
  source           = "./region"
  region           = "ap-northeast-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_ap_northeast_2" {
  source           = "./region"
  region           = "ap-northeast-2"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_ap_northeast_3" {
  source           = "./region"
  region           = "ap-northeast-3"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_ap_south_1" {
  source           = "./region"
  region           = "ap-south-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_ap_southeast_1" {
  source           = "./region"
  region           = "ap-southeast-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_ap_southeast_2" {
  source           = "./region"
  region           = "ap-southeast-2"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_ca_central_1" {
  source           = "./region"
  region           = "ca-central-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_eu_central_1" {
  source           = "./region"
  region           = "eu-central-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_eu_north_1" {
  source           = "./region"
  region           = "eu-north-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_eu_west_1" {
  source           = "./region"
  region           = "eu-west-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_eu_west_2" {
  source           = "./region"
  region           = "eu-west-2"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_eu_west_3" {
  source           = "./region"
  region           = "eu-west-3"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_sa_east_1" {
  source           = "./region"
  region           = "sa-east-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_us_east_1" {
  source           = "./region"
  region           = "us-east-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_us_east_2" {
  source           = "./region"
  region           = "us-east-2"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_us_west_1" {
  source           = "./region"
  region           = "us-west-1"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
module "region_us_west_2" {
  source           = "./region"
  region           = "us-west-2"
  admin_account_id = var.admin_account_id
  assume_role      = var.assume_role
}
