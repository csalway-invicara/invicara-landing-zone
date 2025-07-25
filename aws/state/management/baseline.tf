## GLOBAL

module "baseline_global" {
  source = "../../blueprints/account/global"
  providers = {
    aws = aws.default-region
  }
  flags = {}
}

## OPT-IN REGION

module "baseline_me_central_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.me-central-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.me_central_1
  flags                   = {}
}

## DEFAULT REGIONS

module "baseline_ap_northeast_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ap-northeast-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.ap_northeast_1
  flags                   = {}
}
module "baseline_ap_northeast_2" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ap-northeast-2
  }
  config_logs_bucket_name = local.bucket_config_log_names.ap_northeast_2
  flags                   = {}
}
module "baseline_ap_northeast_3" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ap-northeast-3
  }
  config_logs_bucket_name = local.bucket_config_log_names.ap_northeast_3
  flags                   = {}
}
module "baseline_ap_south_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ap-south-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.ap_south_1
  flags                   = {}
}
module "baseline_ap_southeast_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ap-southeast-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.ap_southeast_1
  flags                   = {}
}
module "baseline_ap_southeast_2" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ap-southeast-2
  }
  config_logs_bucket_name = local.bucket_config_log_names.ap_southeast_2
  flags                   = {}
}
module "baseline_ca_central_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.ca-central-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.ca_central_1
  flags                   = {}
}
module "baseline_eu_central_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.eu-central-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.eu_central_1
  flags                   = {}
}
module "baseline_eu_north_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.eu-north-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.eu_north_1
  flags                   = {}
}
module "baseline_eu_west_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.eu-west-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.eu_west_1
  flags                   = {}
}
module "baseline_eu_west_2" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.eu-west-2
  }
  config_logs_bucket_name = local.bucket_config_log_names.eu_west_2
  flags                   = {}
}
module "baseline_eu_west_3" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.eu-west-3
  }
  config_logs_bucket_name = local.bucket_config_log_names.eu_west_3
  flags                   = {}
}
module "baseline_sa_east_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.sa-east-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.sa_east_1
  flags                   = {}
}
module "baseline_us_east_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.us-east-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.us_east_1
  flags                   = {}
}
module "baseline_us_east_2" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.us-east-2
  }
  config_logs_bucket_name = local.bucket_config_log_names.us_east_2
  flags                   = {}
}
module "baseline_us_west_1" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.us-west-1
  }
  config_logs_bucket_name = local.bucket_config_log_names.us_west_1
  flags                   = {}
}
module "baseline_us_west_2" {
  source = "../../blueprints/account/region"
  providers = {
    aws = aws.us-west-2
  }
  config_logs_bucket_name = local.bucket_config_log_names.us_west_2
  flags                   = {}
}
