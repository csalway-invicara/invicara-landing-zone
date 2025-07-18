# [Config.1] AWS Config should be enabled and use the service-linked role for resource recording

resource "aws_config_configuration_recorder" "this" {
  role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/aws-service-role/config.amazonaws.com/AWSServiceRoleForConfig"

  recording_group {
    all_supported                 = true
    include_global_resource_types = true # This will include global resources like IAM, CloudFront, etc. 
  }

  recording_mode {
    recording_frequency = "CONTINUOUS"
  }
}

resource "aws_config_delivery_channel" "this" {
  s3_bucket_name = var.config_logs_bucket_name

  depends_on = [
    aws_config_configuration_recorder.this
  ]
}

resource "aws_config_configuration_recorder_status" "this" {
  # this may error when first run whilst the aws_config_configuration_recorder is created
  name       = aws_config_configuration_recorder.this.name
  is_enabled = true

  depends_on = [
    aws_config_delivery_channel.this
  ]
}
