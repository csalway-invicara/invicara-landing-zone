# ap-northeast-1
module "config_log_ap_northeast_1" {
  count  = var.config_log_ap_northeast_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ap-northeast-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-northeast-2
module "config_log_ap_northeast_2" {
  count  = var.config_log_ap_northeast_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ap-northeast-2
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-northeast-3
module "config_log_ap_northeast_3" {
  count  = var.config_log_ap_northeast_3 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ap-northeast-3
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-south-1
module "config_log_ap_south_1" {
  count  = var.config_log_ap_south_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ap-south-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-southeast-1
module "config_log_ap_southeast_1" {
  count  = var.config_log_ap_southeast_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ap-southeast-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-southeast-2
module "config_log_ap_southeast_2" {
  count  = var.config_log_ap_southeast_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ap-southeast-2
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ca-central-1
module "config_log_ca_central_1" {
  count  = var.config_log_ca_central_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.ca-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-central-1
module "config_log_eu_central_1" {
  count  = var.config_log_eu_central_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.eu-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-north-1
module "config_log_eu_north_1" {
  count  = var.config_log_eu_north_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.eu-north-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-west-1
module "config_log_eu_west_1" {
  count  = var.config_log_eu_west_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.eu-west-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-west-2
module "config_log_eu_west_2" {
  count  = var.config_log_eu_west_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.eu-west-2
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-west-3
module "config_log_eu_west_3" {
  count  = var.config_log_eu_west_3 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.eu-west-3
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# sa-east-1
module "config_log_sa_east_1" {
  count  = var.config_log_sa_east_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.sa-east-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# us-east-1
module "config_log_us_east_1" {
  count  = var.config_log_us_east_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.us-east-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# us-east-2
module "config_log_us_east_2" {
  count  = var.config_log_us_east_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.us-east-2
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# us-west-1
module "config_log_us_west_1" {
  count  = var.config_log_us_west_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.us-west-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# us-west-2
module "config_log_us_west_2" {
  count  = var.config_log_us_west_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.us-west-2
  }
  s3_bucket_name = var.config_logs_bucket_name
}
