# [SSM.7] SSM documents should have the block public sharing setting enabled

resource "aws_ssm_service_setting" "public_sharing_permission" {
  setting_id    = "arn:aws:ssm:${data.aws_region.current.region}:${data.aws_caller_identity.current.account_id}:servicesetting/ssm/documents/console/public-sharing-permission"
  setting_value = "Disable"
}