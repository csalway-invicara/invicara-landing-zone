data "aws_kms_alias" "aws_ebs" {
  name = "alias/aws/ebs"
}

resource "aws_ebs_encryption_by_default" "this" {
  enabled = var.flags.ebs_encryption_by_default ? true : false
}

resource "aws_ebs_default_kms_key" "this" {
  count = var.flags.ebs_encryption_reset_kms_key ? 1 : 0

  key_arn = data.aws_kms_alias.aws_ebs.target_key_arn
}
