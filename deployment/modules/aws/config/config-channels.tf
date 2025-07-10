resource "aws_config_delivery_channel" "regional" {
  s3_bucket_name = var.s3_bucket_name
  #sns_topic_arn  = aws_sns_topic.config_notifications.arn

  depends_on = [
    aws_config_configuration_recorder.regional
  ]
}
