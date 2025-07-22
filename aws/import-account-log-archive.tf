import {
  to = module.account_log_archive.module.cloudtrail_trail_bucket.aws_s3_bucket.this
  id = "aws-cloudtrail-logs-eu-west-1-828512280012"
}
import {
  to = module.account_log_archive.module.config_logs_bucket_default_region.aws_s3_bucket.this
  id = "aws-config-logs-eu-west-1-828512280012"
}
import {
  to = module.account_log_archive_global.module.foundation.aws_iam_role.aws_support_role[0]
  id = "AWSSupportRole"
}