variable "default_region" {
  type = string
}

variable "account_id" {
  type = string
}

variable "assume_role" {
  type = string
}

variable "config_logs_bucket_names" {
  type = map(any)
}