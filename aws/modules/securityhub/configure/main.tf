resource "aws_securityhub_finding_aggregator" "admin" {
  linking_mode = "ALL_REGIONS"
}

resource "aws_securityhub_organization_configuration" "this" {
  auto_enable           = false
  auto_enable_standards = "NONE"
  organization_configuration {
    configuration_type = "CENTRAL"
  }
  depends_on = [aws_securityhub_finding_aggregator.admin]
}

resource "aws_securityhub_configuration_policy" "org" {
  name        = "OrganizationPolicy"
  description = "Configuration policy for the Organization"

  configuration_policy {
    service_enabled = true
    enabled_standard_arns = [
      "arn:aws:securityhub:${data.aws_region.current.region}::standards/aws-foundational-security-best-practices/v/1.0.0",
      "arn:aws:securityhub:${data.aws_region.current.region}::standards/cis-aws-foundations-benchmark/v/1.4.0",
    ]
    security_controls_configuration {
      disabled_control_identifiers = [
        "IAM.6", # Hardware MFA should be enabled for the root user
        #"IAM.18",       # Ensure a support role has been created to manage incidents with AWS Support
        "CloudTrail.5", # CloudTrail trails should be integrated with Amazon CloudWatch Logs
      ]
    }
  }

  depends_on = [aws_securityhub_organization_configuration.this]
}

resource "aws_securityhub_configuration_policy_association" "root" {
  target_id = var.organization_root_id
  policy_id = aws_securityhub_configuration_policy.org.id
}
