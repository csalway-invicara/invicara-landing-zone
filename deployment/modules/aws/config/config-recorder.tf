resource "aws_config_configuration_recorder" "regional" {
  role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/aws-service-role/config.amazonaws.com/AWSServiceRoleForConfig"

  # recording_group {
  #   all_supported = true
  #   #include_global_resource_types = true
  # }

  recording_mode {
    recording_frequency = "CONTINUOUS"
  }
}

resource "aws_config_configuration_recorder_status" "regional" {
  # this may error when first run whilst the aws_config_configuration_recorder is created
  name       = aws_config_configuration_recorder.regional.name
  is_enabled = true

  depends_on = [
    aws_config_delivery_channel.regional
  ]
}
