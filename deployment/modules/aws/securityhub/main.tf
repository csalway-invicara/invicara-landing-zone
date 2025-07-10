resource "aws_securityhub_account" "this" {
  provider = aws.management
  enable_default_standards = false
}

resource "aws_securityhub_organization_admin_account" "this" {
  provider         = aws.management
  admin_account_id = var.admin_account_id
}

resource "aws_securityhub_finding_aggregator" "this" {
  provider     = aws.admin
  linking_mode = "ALL_REGIONS"

  depends_on = [aws_securityhub_organization_admin_account.this]
}

resource "aws_securityhub_organization_configuration" "this" {
  provider              = aws.admin
  auto_enable           = false
  auto_enable_standards = "NONE"
  organization_configuration {
    configuration_type = "CENTRAL"
  }
  depends_on = [aws_securityhub_finding_aggregator.this]
}

resource "aws_securityhub_configuration_policy" "org" {
  provider    = aws.admin
  name        = "OrganizationPolicy"
  description = "Configuration policy for the Organization"

  configuration_policy {
    service_enabled = true
    enabled_standard_arns = [
      "arn:aws:securityhub:${var.default_region}::standards/aws-foundational-security-best-practices/v/1.0.0",
      "arn:aws:securityhub:${var.default_region}::standards/cis-aws-foundations-benchmark/v/1.4.0",
    ]
    security_controls_configuration {
      disabled_control_identifiers = []
    }
  }

  depends_on = [aws_securityhub_organization_configuration.this]
}

resource "aws_securityhub_configuration_policy_association" "root" {
  provider  = aws.admin
  target_id = var.organization_root_id
  policy_id = aws_securityhub_configuration_policy.org.id
}
