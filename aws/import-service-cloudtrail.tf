import {
  to = module.services.module.cloudtrail.aws_cloudtrail.this
  id = "arn:aws:cloudtrail:eu-west-1:105561173654:trail/Organization"
}
import {
  to = module.services.module.cloudtrail.aws_kms_key.cloudtrail
  id = "75a554f1-50a8-42ae-87fb-343a09c4d1cb"
}
import {
  to = module.services.module.cloudtrail.aws_kms_alias.cloudtrail
  id = "alias/cloudtrail"
}