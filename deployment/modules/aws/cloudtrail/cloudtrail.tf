# For an organization trail, this resource must be in the master account of the organization.
# For a multi-region trail, this resource must be in the home region of the trail.

resource "aws_cloudtrail" "this" {
  name                       = "Organization"
  s3_bucket_name             = var.cloudtrail_logs_bucket_name
  is_multi_region_trail      = true
  is_organization_trail      = true
  enable_log_file_validation = true
}
