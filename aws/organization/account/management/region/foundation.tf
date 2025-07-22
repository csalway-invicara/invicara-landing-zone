module "foundation" {
  source = "../../../../standards/foundation/region"

  config_logs_bucket_name = var.config_logs_bucket_name
  flags                   = var.flags
}
