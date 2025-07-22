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

module "account_management" {
  source = "./accounts/management"

  default_region           = var.default_region
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

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

module "account_log_archive" {
  source = "./accounts/log-archive"

  default_region           = var.default_region
  account_id               = aws_organizations_account.log_archive.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

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

module "account_security_audit" {
  source = "./accounts/security-audit"

  default_region           = var.default_region
  account_id               = aws_organizations_account.security_audit.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "networking" {
  name              = "Networking"
  email             = "devops+networking@invicara.com"
  parent_id         = aws_organizations_organizational_unit.infrastrcture.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

module "account_networking" {
  source = "./accounts/networking"

  default_region           = var.default_region
  account_id               = aws_organizations_account.networking.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "account_1" {
  name              = "invicara account 1"
  email             = "devops+account1@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_account_1" {
  source = "./accounts/account-1"

  default_region           = var.default_region
  account_id               = aws_organizations_account.account_1.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "account_2" {
  name              = "invicara account 2"
  email             = "devops+account2@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_account_2" {
  source = "./accounts/account-2"

  default_region           = var.default_region
  account_id               = aws_organizations_account.account_2.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "account_3" {
  name              = "invicara account 3"
  email             = "devops+account3@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_account_3" {
  source = "./accounts/account-3"

  default_region           = var.default_region
  account_id               = aws_organizations_account.account_3.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "invicara_global" {
  name              = "invicara-global"
  email             = "devops_sandbox@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_invicara_global" {
  source = "./accounts/invicara-global"

  default_region           = var.default_region
  account_id               = aws_organizations_account.invicara_global.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "invicara_us" {
  name              = "invicara"
  email             = "devops_us@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_invicara_us" {
  source = "./accounts/invicara-us"

  default_region           = var.default_region
  account_id               = aws_organizations_account.invicara_us.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####

resource "aws_organizations_account" "invicara_ireland" {
  name              = "invicara-ireland"
  email             = "devops_irl@invicara.com"
  parent_id         = aws_organizations_organizational_unit.workloads.id
  role_name         = var.organization_account_access_role
  close_on_deletion = true
  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}

module "account_invicara_ireland" {
  source = "./accounts/invicara-ireland"

  default_region           = var.default_region
  account_id               = aws_organizations_account.invicara_ireland.id
  assume_role              = var.organization_account_access_role
  config_logs_bucket_names = module.buckets.config_logs_buckets
}

####
