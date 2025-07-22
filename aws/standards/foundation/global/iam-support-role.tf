# [IAM.18] Ensure a support role has been created to manage incidents with AWS Support

resource "aws_iam_role" "aws_support_role" {
  count = var.flags.iam_create_support_role ? 1 : 0

  name = "AWSSupportRole"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "AWS" : data.aws_caller_identity.current.account_id
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "aws_support_role" {
  count = var.flags.iam_create_support_role ? 1 : 0

  role       = aws_iam_role.aws_support_role[0].name
  policy_arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
}
