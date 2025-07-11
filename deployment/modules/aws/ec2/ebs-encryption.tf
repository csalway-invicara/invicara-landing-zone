# [EC2.7] EBS default encryption should be enabled

resource "aws_ebs_encryption_by_default" "this" {
  enabled = true
}
