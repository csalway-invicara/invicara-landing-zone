
resource "aws_guardduty_organization_configuration_feature" "s3_data_events" {
  detector_id = var.detector_id
  name        = "S3_DATA_EVENTS"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "eks_audit_logs" {
  detector_id = var.detector_id
  name        = "EKS_AUDIT_LOGS"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "runtime_monitoring" {
  detector_id = var.detector_id
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
  detector_id = var.detector_id
  name        = "EBS_MALWARE_PROTECTION"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "rds_login_events" {
  detector_id = var.detector_id
  name        = "RDS_LOGIN_EVENTS"
  auto_enable = "ALL"
}

resource "aws_guardduty_organization_configuration_feature" "lambda_network_logs" {
  detector_id = var.detector_id
  name        = "LAMBDA_NETWORK_LOGS"
  auto_enable = "ALL"
}
