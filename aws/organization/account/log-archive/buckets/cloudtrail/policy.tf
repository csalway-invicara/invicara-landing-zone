# https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html
resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "AWSCloudTrailAclCheck",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "cloudtrail.amazonaws.com"
        },
        "Action" : "s3:GetBucketAcl",
        "Resource" : "${aws_s3_bucket.this.arn}",
        # "Condition" : {
        #   "StringEquals" : {
        #     "aws:SourceArn" : "arn:aws:cloudtrail:region:managementAccountID:trail/trailName"
        #   }
        # }
      },
      {
        "Sid" : "AWSCloudTrailWrite",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "cloudtrail.amazonaws.com"
        },
        "Action" : "s3:PutObject",
        "Resource" : "${aws_s3_bucket.this.arn}/*",
        "Condition" : {
          "StringEquals" : {
            "s3:x-amz-acl" : "bucket-owner-full-control",
            #   "aws:SourceArn" : "arn:aws:cloudtrail:region:managementAccountID:trail/trailName"
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
