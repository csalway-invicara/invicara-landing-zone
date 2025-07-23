variable "default_region" {
  type = string
}

variable "account_id" {
  type = string
}

variable "assume_role" {
  type = string
}

variable "flags" {
  type = object({
    iam_strict_account_password_policy = optional(bool, true)
    iam_create_support_role            = optional(bool, true)
    s3_account_public_access_block     = optional(bool, true)
  })
  default = {
    iam_strict_account_password_policy = true
    iam_create_support_role            = true
    s3_account_public_access_block     = true
  }
}
