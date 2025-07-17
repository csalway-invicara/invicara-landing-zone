resource "aws_guardduty_detector" "root" {
  provider = aws.root
  enable   = true
}

resource "aws_guardduty_detector" "admin" {
  provider = aws.admin
  enable   = true
}

resource "aws_guardduty_organization_admin_account" "this" {
  provider         = aws.root
  admin_account_id = aws_guardduty_detector.admin.account_id
}

resource "aws_guardduty_organization_configuration" "this" {
  provider                         = aws.admin
  detector_id                      = aws_guardduty_detector.admin.id
  auto_enable_organization_members = "ALL"
  depends_on                       = [aws_guardduty_organization_admin_account.this]
}

module "configure" {
  source = "./configure"
  providers = {
    aws = aws.admin
  }
  detector_id = aws_guardduty_detector.admin.id
  depends_on  = [aws_guardduty_organization_admin_account.this]
}
