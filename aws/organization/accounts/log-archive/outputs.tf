output "config_logs_bucket_name" {
  value = module.default_region.config_logs_bucket_name
}

output "cloudtrail_logs_bucket_name" {
  value = module.default_region.cloudtrail_logs_bucket_name
}
