variable "management_completed" {
  # the management account must be applied before security-audit as it
  # delgates admin to the security audit account for certain services
  type = bool
}

variable "default_region" {
  type = string
}

variable "account_id" {
  type = string
}

variable "assume_role" {
  type = string
}

variable "config_logs_bucket_name" {
  type = string
}

variable "organization_root_id" {
  type = string
}