resource "aws_organizations_account" "management" {
  name      = "invicara-main"
  email     = "devops@invicara.com"
  parent_id = aws_organizations_organization.this.roots[0].id
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_account" "log_archive" {
  name      = "Log Archive"
  email     = "security-log-archive@invicara.com"
  parent_id = aws_organizations_organizational_unit.security.id
  role_name = var.organization_account_access_role
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "security_audit" {
  name      = "Security Audit"
  email     = "security@invicara.com"
  parent_id = aws_organizations_organizational_unit.security.id
  role_name = var.organization_account_access_role
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}
