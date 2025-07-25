## OPT-IN REGIONS

module "bucket_config_logs_me_central_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-me-central-1
  }
}

## DEFAULT REGIONS

module "bucket_config_logs_ap_northeast_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ap-northeast-1
  }
}
module "bucket_config_logs_ap_northeast_2" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ap-northeast-2
  }
}
module "bucket_config_logs_ap_northeast_3" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ap-northeast-3
  }
}
module "bucket_config_logs_ap_south_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ap-south-1
  }
}
module "bucket_config_logs_ap_southeast_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ap-southeast-1
  }
}
module "bucket_config_logs_ap_southeast_2" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ap-southeast-2
  }
}
module "bucket_config_logs_ca_central_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-ca-central-1
  }
}
module "bucket_config_logs_eu_central_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-eu-central-1
  }
}
module "bucket_config_logs_eu_north_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-eu-north-1
  }
}
module "bucket_config_logs_eu_west_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-eu-west-1
  }
}
module "bucket_config_logs_eu_west_2" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-eu-west-2
  }
}
module "bucket_config_logs_eu_west_3" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-eu-west-3
  }
}
module "bucket_config_logs_sa_east_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-sa-east-1
  }
}
module "bucket_config_logs_us_east_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-us-east-1
  }
}
module "bucket_config_logs_us_east_2" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-us-east-2
  }
}
module "bucket_config_logs_us_west_1" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-us-west-1
  }
}
module "bucket_config_logs_us_west_2" {
  source = "./bucket-config-logs"
  providers = {
    aws = aws.logs-us-west-2
  }
}