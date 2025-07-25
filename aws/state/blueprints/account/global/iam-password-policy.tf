# [IAM.7] Password policies for IAM users should have strong configurations
# [IAM.15] Ensure IAM password policy requires minimum password length of 14 or greater
# [IAM.16] Ensure IAM password policy prevents password reuse

resource "aws_iam_account_password_policy" "strict" {
  require_uppercase_characters = var.flags.iam_strict_account_password_policy
  require_lowercase_characters = var.flags.iam_strict_account_password_policy
  require_symbols              = var.flags.iam_strict_account_password_policy
  require_numbers              = var.flags.iam_strict_account_password_policy
  minimum_password_length      = var.flags.iam_strict_account_password_policy ? 14 : 5
  password_reuse_prevention    = var.flags.iam_strict_account_password_policy ? 24 : 0
  # max_password_age               = 1
  allow_users_to_change_password = var.flags.iam_strict_account_password_policy
}
