output "cloudtrail_trail_bucket_name" {
  value = module.cloudtrail_trail_bucket.bucket_name
}

output "config_logs_bucket_name" {
  value = module.config_logs_bucket_default_region.bucket_name
}
