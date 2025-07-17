module "config_logs_bucket" {
  source = "./bucket-config"
}

module "cloudtrail_logs_bucket" {
  source = "./bucket-cloudtrail"

  security_audit_account_id = var.security_audit_account_id
}
