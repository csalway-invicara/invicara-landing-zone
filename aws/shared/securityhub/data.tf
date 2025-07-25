data "aws_region" "admin" {
  provider = aws.admin
}
# data.aws_region.admin.region

data "aws_caller_identity" "admin" {
  provider = aws.admin
}
# data.aws_caller_identity.admin.account_id
# data.aws_caller_identity.admin.arn
# data.aws_caller_identity.admin.user_id