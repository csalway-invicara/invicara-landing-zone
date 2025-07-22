# Prowler - IMDSv2 should be enabled by default for EC2 instances

resource "aws_ec2_instance_metadata_defaults" "imdsv2" {
  http_tokens                 = var.flags.ec2_instance_metadata_require_v2 ? "required" : "optional"
  http_put_response_hop_limit = 1
}
