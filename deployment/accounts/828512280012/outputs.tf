output "config_logs_bucket_name" {
  value = module.config_logs_bucket.bucket_name
}

output "cloudtrail_logs_bucket_name" {
  value = module.cloudtrail_logs_bucket.bucket_name
}
