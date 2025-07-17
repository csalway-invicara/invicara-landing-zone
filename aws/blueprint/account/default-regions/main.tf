module "region_ap_northeast_1" {
  source                  = "../region"
  providers               = { aws = aws.ap-northeast-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_ap_northeast_2" {
  source                  = "../region"
  providers               = { aws = aws.ap-northeast-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_ap_northeast_3" {
  source                  = "../region"
  providers               = { aws = aws.ap-northeast-3 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_ap_south_1" {
  source                  = "../region"
  providers               = { aws = aws.ap-south-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_ap_southeast_1" {
  source                  = "../region"
  providers               = { aws = aws.ap-southeast-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_ap_southeast_2" {
  source                  = "../region"
  providers               = { aws = aws.ap-southeast-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_ca_central_1" {
  source                  = "../region"
  providers               = { aws = aws.ca-central-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_eu_central_1" {
  source                  = "../region"
  providers               = { aws = aws.eu-central-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_eu_north_1" {
  source                  = "../region"
  providers               = { aws = aws.eu-north-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_eu_west_1" {
  source                  = "../region"
  providers               = { aws = aws.eu-west-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_eu_west_2" {
  source                  = "../region"
  providers               = { aws = aws.eu-west-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_eu_west_3" {
  source                  = "../region"
  providers               = { aws = aws.eu-west-3 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_sa_east_1" {
  source                  = "../region"
  providers               = { aws = aws.sa-east-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_us_east_1" {
  source                  = "../region"
  providers               = { aws = aws.us-east-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_us_east_2" {
  source                  = "../region"
  providers               = { aws = aws.us-east-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_us_west_1" {
  source                  = "../region"
  providers               = { aws = aws.us-west-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "region_us_west_2" {
  source                  = "../region"
  providers               = { aws = aws.us-west-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
