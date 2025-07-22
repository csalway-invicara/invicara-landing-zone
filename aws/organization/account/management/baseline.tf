module "global" {
  source = "../../../standards/foundation/global"
}

module "default_regions" {
  source = "./region/default-regions"

  config_logs_bucket_name = var.config_logs_bucket_name
}

module "me_central_1" {
  source = "./region"
  region = "me-central-1"

  config_logs_bucket_name = var.config_logs_bucket_name
}
