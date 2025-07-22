resource "aws_guardduty_detector" "management" {
  provider = aws.management

  enable = true
}

resource "aws_guardduty_organization_admin_account" "management" {
  provider = aws.management

  admin_account_id = var.admin_account_id
}

############################################################

resource "aws_guardduty_detector" "admin" {
  provider = aws.admin

  enable = true
}

resource "aws_guardduty_organization_configuration" "admin" {
  provider = aws.admin

  detector_id                      = aws_guardduty_detector.admin.id
  auto_enable_organization_members = "ALL"

  depends_on = [aws_guardduty_organization_admin_account.management]
}


resource "aws_guardduty_organization_configuration_feature" "s3_data_events" {
  provider = aws.admin

  detector_id = aws_guardduty_detector.admin.id
  name        = "S3_DATA_EVENTS"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "eks_audit_logs" {
  provider = aws.admin

  detector_id = aws_guardduty_detector.admin.id
  name        = "EKS_AUDIT_LOGS"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "runtime_monitoring" {
  provider = aws.admin

  detector_id = aws_guardduty_detector.admin.id
  name        = "RUNTIME_MONITORING"
  auto_enable = "ALL"

  additional_configuration {
    name        = "ECS_FARGATE_AGENT_MANAGEMENT"
    auto_enable = "ALL"
  }
  additional_configuration {
    name        = "EC2_AGENT_MANAGEMENT"
    auto_enable = "ALL"
  }
  additional_configuration {
    name        = "EKS_ADDON_MANAGEMENT"
    auto_enable = "ALL"
  }
}

resource "aws_guardduty_organization_configuration_feature" "ebs_malware_protection" {
  provider = aws.admin

  detector_id = aws_guardduty_detector.admin.id
  name        = "EBS_MALWARE_PROTECTION"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "rds_login_events" {
  provider = aws.admin

  detector_id = aws_guardduty_detector.admin.id
  name        = "RDS_LOGIN_EVENTS"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "lambda_network_logs" {
  provider = aws.admin

  detector_id = aws_guardduty_detector.admin.id
  name        = "LAMBDA_NETWORK_LOGS"
  auto_enable = "ALL"
}
