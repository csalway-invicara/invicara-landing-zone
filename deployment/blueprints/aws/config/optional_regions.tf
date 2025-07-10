# af-south-1
# module "config_log_af_south_1" {
#   count  = var.config_log_af_south_1 ? 1 : 0
#   source = "../../../modules/aws/config"
#   providers = {
#     aws = aws.af-south-1
#   }
#   s3_bucket_name = var.config_logs_bucket_name
# }
# ap-east-1
module "config_log_ap_east_1" {
  count  = var.config_log_ap_east_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-south-2
module "config_log_ap_south_2" {
  count  = var.config_log_ap_south_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-southeast-3
module "config_log_ap_southeast_3" {
  count  = var.config_log_ap_southeast_3 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-southeast-5
module "config_log_ap_southeast_5" {
  count  = var.config_log_ap_southeast_5 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}

# ap-southeast-4
module "config_log_ap_southeast_4" {
  count  = var.config_log_ap_southeast_4 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-east-2
module "config_log_ap_east_2" {
  count  = var.config_log_ap_east_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ap-southeast-7
module "config_log_ap_southeast_7" {
  count  = var.config_log_ap_southeast_7 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# ca-west-1
module "config_log_ca_west_1" {
  count  = var.config_log_ca_west_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-south-1
module "config_log_eu_south_1" {
  count  = var.config_log_eu_south_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-south-2
module "config_log_eu_south_2" {
  count  = var.config_log_eu_south_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# eu-central-2
module "config_log_eu_central_2" {
  count  = var.config_log_eu_central_2 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# mx-central-1
module "config_log_mx_central_1" {
  count  = var.config_log_mx_central_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# me-south-1
module "config_log_me_south_1" {
  count  = var.config_log_me_south_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# me-central-1
module "config_log_me_central_1" {
  count  = var.config_log_me_central_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}
# il-central-1
module "config_log_il_central_1" {
  count  = var.config_log_il_central_1 ? 1 : 0
  source = "../../../modules/aws/config"
  providers = {
    aws = aws.me-central-1
  }
  s3_bucket_name = var.config_logs_bucket_name
}