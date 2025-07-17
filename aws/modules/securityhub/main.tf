resource "aws_securityhub_account" "this" {
  provider = aws.root

  enable_default_standards = false
}

resource "aws_securityhub_account" "admin" {
  provider = aws.admin

  enable_default_standards = false
}

resource "aws_securityhub_organization_admin_account" "this" {
  provider = aws.root

  admin_account_id = aws_securityhub_account.admin.id
}

module "configure" {
  source = "./configure"
  providers = {
    aws = aws.admin
  }
  organization_root_id = var.organization_root_id
  depends_on           = [aws_securityhub_organization_admin_account.this]
}
