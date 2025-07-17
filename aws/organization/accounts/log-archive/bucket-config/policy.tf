# https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html
resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "AWSBucketPermissionsCheck",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "config.amazonaws.com"
        },
        "Action" : [
          "s3:GetBucketLocation",
          "s3:GetBucketAcl",
          "s3:ListBucket"
        ],
        "Resource" : "${aws_s3_bucket.this.arn}"
        # "Condition" : {
        #   "StringEquals" : {
        #     "AWS:PrincipalOrgID" : "${data.aws_organizations_organization.this.id}"
        #   }
        # }
      },
      {
        "Sid" : "AWSBucketDelivery",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "config.amazonaws.com"
        },
        "Action" : "s3:PutObject",
        "Resource" : "${aws_s3_bucket.this.arn}/*"
        "Condition" : {
          "StringEquals" : {
            "s3:x-amz-acl" : "bucket-owner-full-control",
            #   "AWS:PrincipalOrgID" : "${data.aws_organizations_organization.this.id}"
          }
        }
      },
      {
        "Sid" : "DenyNonSSLRequests",
        "Effect" : "Deny",
        "Action" : "s3:*",
        "Resource" : [
          "${aws_s3_bucket.this.arn}",
          "${aws_s3_bucket.this.arn}/*"
        ],
        "Principal" : "*",
        "Condition" : {
          "Bool" : {
            "aws:SecureTransport" : "false"
          }
        }
      }
    ]
  })
}
