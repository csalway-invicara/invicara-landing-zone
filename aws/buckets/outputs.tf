output "cloudtrail_trail_bucket_name" {
  value = module.cloudtrail_trail_bucket.bucket_name
}

output "config_logs_buckets" {
  value = module.config_logs_buckets.bucket_names
}
