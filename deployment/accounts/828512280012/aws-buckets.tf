module "config_logs_bucket" {
  source = "../../modules/aws/config/bucket"
}

module "cloudtrail_logs_bucket" {
  source = "../../modules/aws/cloudtrail/bucket"
}
