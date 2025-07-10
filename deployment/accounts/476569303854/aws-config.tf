module "config_log" {
  source = "../../blueprints/aws/config"

  account_id  = var.account_id
  assume_role = var.assume_role

  config_logs_bucket_name = var.config_logs_bucket_name

  config_log_me_central_1 = true
}
