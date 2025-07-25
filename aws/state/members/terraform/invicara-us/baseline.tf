module "baseline_global" {
  source = "../../blueprints/account/global"
  providers = {
    aws = aws.default-region
  }
  flags = local.flags_global
}

module "baseline_region" {
  source = "../../blueprints/account/region"
  for_each = var.enabled_regions
  providers = {
    aws = aws.regions[each.key]
  }
  config_logs_bucket_name = local.bucket_config_log_names[replace(each.key, "-", "_")]
  flags                   = local.flags_region
}
