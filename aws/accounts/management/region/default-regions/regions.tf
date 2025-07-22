module "region_ap_northeast_1" {
  source                  = "../"
  region                  = "ap-northeast-1"
  config_logs_bucket_name = var.config_logs_bucket_names.ap_northeast_1
}
module "region_ap_northeast_2" {
  source                  = "../"
  region                  = "ap-northeast-2"
  config_logs_bucket_name = var.config_logs_bucket_names.ap_northeast_2
}
module "region_ap_northeast_3" {
  source                  = "../"
  region                  = "ap-northeast-3"
  config_logs_bucket_name = var.config_logs_bucket_names.ap_northeast_3
}
module "region_ap_south_1" {
  source                  = "../"
  region                  = "ap-south-1"
  config_logs_bucket_name = var.config_logs_bucket_names.ap_south_1
}
module "region_ap_southeast_1" {
  source                  = "../"
  region                  = "ap-southeast-1"
  config_logs_bucket_name = var.config_logs_bucket_names.ap_southeast_1
}
module "region_ap_southeast_2" {
  source                  = "../"
  region                  = "ap-southeast-2"
  config_logs_bucket_name = var.config_logs_bucket_names.ap_southeast_2
}
module "region_ca_central_1" {
  source                  = "../"
  region                  = "ca-central-1"
  config_logs_bucket_name = var.config_logs_bucket_names.ca_central_1
}
module "region_eu_central_1" {
  source                  = "../"
  region                  = "eu-central-1"
  config_logs_bucket_name = var.config_logs_bucket_names.eu_central_1
}
module "region_eu_north_1" {
  source                  = "../"
  region                  = "eu-north-1"
  config_logs_bucket_name = var.config_logs_bucket_names.eu_north_1
}
module "region_eu_west_1" {
  source                  = "../"
  region                  = "eu-west-1"
  config_logs_bucket_name = var.config_logs_bucket_names.eu_west_1
}
module "region_eu_west_2" {
  source                  = "../"
  region                  = "eu-west-2"
  config_logs_bucket_name = var.config_logs_bucket_names.eu_west_2
}
module "region_eu_west_3" {
  source                  = "../"
  region                  = "eu-west-3"
  config_logs_bucket_name = var.config_logs_bucket_names.eu_west_3
}
module "region_sa_east_1" {
  source                  = "../"
  region                  = "sa-east-1"
  config_logs_bucket_name = var.config_logs_bucket_names.sa_east_1
}
module "region_us_east_1" {
  source                  = "../"
  region                  = "us-east-1"
  config_logs_bucket_name = var.config_logs_bucket_names.us_east_1
}
module "region_us_east_2" {
  source                  = "../"
  region                  = "us-east-2"
  config_logs_bucket_name = var.config_logs_bucket_names.us_east_2
}
module "region_us_west_1" {
  source                  = "../"
  region                  = "us-west-1"
  config_logs_bucket_name = var.config_logs_bucket_names.us_west_1
}
module "region_us_west_2" {
  source                  = "../"
  region                  = "us-west-2"
  config_logs_bucket_name = var.config_logs_bucket_names.us_west_2
}
