resource "aws_organizations_account" "management" {
  name              = "invicara-main"
  email             = "devops@invicara.com"
  parent_id         = aws_organizations_organization.this.roots[0].id
  close_on_deletion = false
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "log_archive" {
  name              = "Log Archive"
  email             = "security-log-archive@invicara.com"
  parent_id         = aws_organizations_organizational_unit.security.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "security_audit" {
  name              = "Security Audit"
  email             = "security@invicara.com"
  parent_id         = aws_organizations_organizational_unit.security.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "networking" {
  name              = "Networking"
  email             = "devops+networking@invicara.com"
  parent_id         = aws_organizations_organizational_unit.infrastructure.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "invicara_global" {
  name              = "invicara-global"
  email             = "devops_sandbox@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "invicara_us" {
  name              = "invicara"
  email             = "devops_us@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "invicara_ireland" {
  name              = "invicara-ireland"
  email             = "devops_irl@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

resource "aws_organizations_account" "landing_zone_test" {
  name              = "LandingZoneTest"
  email             = "devops+landing-zone-test@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}
