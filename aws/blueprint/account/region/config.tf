module "config" {
  source                  = "../../../modules/config"
  config_logs_bucket_name = var.config_logs_bucket_name
}