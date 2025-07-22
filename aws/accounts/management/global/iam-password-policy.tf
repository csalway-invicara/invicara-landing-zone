# [IAM.7] Password policies for IAM users should have strong configurations
# [IAM.15] Ensure IAM password policy requires minimum password length of 14 or greater
# [IAM.16] Ensure IAM password policy prevents password reuse

resource "aws_iam_account_password_policy" "strict" {
  count = var.flags.iam_strict_account_password_policy ? 1 : 0

  require_uppercase_characters = true
  require_lowercase_characters = true
  require_symbols              = true
  require_numbers              = true
  minimum_password_length      = 14
  password_reuse_prevention    = 24
  # max_password_age               = 1
  allow_users_to_change_password = true
}
