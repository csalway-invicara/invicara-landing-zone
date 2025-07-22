variable "default_region" {
  type = string
}

variable "cloudtrail_trail_bucket_name" {
  type = string
}

variable "guardduty_admin_account_id" {
  type = string
}

variable "securityhub_admin_account_id" {
  type = string
}

variable "assume_role" {
  type = string
}

variable "organization_root_id" {
  type = string
}