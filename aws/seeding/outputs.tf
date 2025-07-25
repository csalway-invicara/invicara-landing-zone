output "organization_root" {
  value = aws_organizations_organization.this.roots[0]
}

output "organizational_units" {
  value = {
    infrastructure = aws_organizations_organizational_unit.infrastructure
    security       = aws_organizations_organizational_unit.security
    workloads      = aws_organizations_organizational_unit.workloads
  }
}

output "accounts" {
  value = {
    management        = aws_organizations_account.management
    log_archive       = aws_organizations_account.log_archive
    security_audit    = aws_organizations_account.security_audit
    networking        = aws_organizations_account.networking
    invicara_global   = aws_organizations_account.invicara_global
    invicara_us       = aws_organizations_account.invicara_us
    invicara_ireland  = aws_organizations_account.invicara_ireland
    landing_zone_test = aws_organizations_account.landing_zone_test
  }
}

output "organization_account_access_role" {
  value = var.organization_account_access_role
}
