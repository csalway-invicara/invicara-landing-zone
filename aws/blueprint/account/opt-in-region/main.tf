module "region" {
  source                  = "../region"
  config_logs_bucket_name = var.config_logs_bucket_name
}