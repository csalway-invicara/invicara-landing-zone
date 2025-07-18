# Prowler - IMDSv2 is not enabled by default for EC2 instances.

resource "aws_ec2_instance_metadata_defaults" "enforce-imdsv2" {
  http_tokens                 = "required"
  http_put_response_hop_limit = 1
}