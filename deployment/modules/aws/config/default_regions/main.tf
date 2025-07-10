module "config_log_us-east-1" {
  source                  = "../"
  providers               = { aws = aws.us-east-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_us-east-2" {
  source                  = "../"
  providers               = { aws = aws.us-east-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_us-west-1" {
  source                  = "../"
  providers               = { aws = aws.us-west-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_us-west-2" {
  source                  = "../"
  providers               = { aws = aws.us-west-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ap-south-1" {
  source                  = "../"
  providers               = { aws = aws.ap-south-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ap-northeast-3" {
  source                  = "../"
  providers               = { aws = aws.ap-northeast-3 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ap-northeast-2" {
  source                  = "../"
  providers               = { aws = aws.ap-northeast-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ap-southeast-1" {
  source                  = "../"
  providers               = { aws = aws.ap-southeast-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ap-southeast-2" {
  source                  = "../"
  providers               = { aws = aws.ap-southeast-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ap-northeast-1" {
  source                  = "../"
  providers               = { aws = aws.ap-northeast-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_ca-central-1" {
  source                  = "../"
  providers               = { aws = aws.ca-central-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_eu-central-1" {
  source                  = "../"
  providers               = { aws = aws.eu-central-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_eu-west-1" {
  source                  = "../"
  providers               = { aws = aws.eu-west-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_eu-west-2" {
  source                  = "../"
  providers               = { aws = aws.eu-west-2 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_eu-west-3" {
  source                  = "../"
  providers               = { aws = aws.eu-west-3 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_eu-north-1" {
  source                  = "../"
  providers               = { aws = aws.eu-north-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
module "config_log_sa-east-1" {
  source                  = "../"
  providers               = { aws = aws.sa-east-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}
