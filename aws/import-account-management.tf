import {
  to = module.account_management.module.cloudtrail.aws_cloudtrail.this
  id = "arn:aws:cloudtrail:eu-west-1:105561173654:trail/Organization"
}
import {
  to = module.account_management.module.cloudtrail.aws_kms_key.cloudtrail
  id = "75a554f1-50a8-42ae-87fb-343a09c4d1cb"
}
import {
  to = module.account_management.module.cloudtrail.aws_kms_alias.cloudtrail
  id = "alias/cloudtrail"
}

import {
  to = module.account_management.module.securityhub.aws_securityhub_account.this
  id = "105561173654"
}
import {
  to = module.account_management.module.securityhub.aws_securityhub_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ap_northeast_1.aws_guardduty_detector.this
  id = "9676ca32434747c4bb64e0309bc2caec"
}
import {
  to = module.account_management.module.guardduty_ap_northeast_2.aws_guardduty_detector.this
  id = "8c3ded0a9fe8477cace27006f0beef7c"
}
import {
  to = module.account_management.module.guardduty_ap_northeast_3.aws_guardduty_detector.this
  id = "b7d3c746e86c41e0b61a2bb04bf3d845"
}
import {
  to = module.account_management.module.guardduty_ap_south_1.aws_guardduty_detector.this
  id = "a17f5fd861294792ba61d6989a235011"
}
import {
  to = module.account_management.module.guardduty_ap_southeast_1.aws_guardduty_detector.this
  id = "da94fdc42ceb4f0292e4eb3adc4123e9"
}
import {
  to = module.account_management.module.guardduty_ap_southeast_2.aws_guardduty_detector.this
  id = "535d6459bda94f6689c8bd7103102644"
}
import {
  to = module.account_management.module.guardduty_ca_central_1.aws_guardduty_detector.this
  id = "bc2a00b672b64f898083645fd4d832f0"
}
import {
  to = module.account_management.module.guardduty_eu_central_1.aws_guardduty_detector.this
  id = "af0d240bf67c4df99149ab6d19b4e3b3"
}
import {
  to = module.account_management.module.guardduty_eu_north_1.aws_guardduty_detector.this
  id = "fdee5eb3b0e04bbfb86afd9180db6924"
}
import {
  to = module.account_management.module.guardduty_eu_west_1.aws_guardduty_detector.this
  id = "cacbd150b656b372071e5c0697b8b4dc"
}
import {
  to = module.account_management.module.guardduty_eu_west_2.aws_guardduty_detector.this
  id = "621e7b5f60d14f269318bc269449e271"
}
import {
  to = module.account_management.module.guardduty_eu_west_3.aws_guardduty_detector.this
  id = "7dafb55f64e24ed1979db431399abf0f"
}
import {
  to = module.account_management.module.guardduty_sa_east_1.aws_guardduty_detector.this
  id = "b10e43924ec145cf8d3fbc33517ab3ea"
}
import {
  to = module.account_management.module.guardduty_us_east_1.aws_guardduty_detector.this
  id = "d4cc06d52727db31da66e63896667d71"
}
import {
  to = module.account_management.module.guardduty_us_east_2.aws_guardduty_detector.this
  id = "b0cc06d65ffec542aed27e7a814fecca"
}
import {
  to = module.account_management.module.guardduty_us_west_1.aws_guardduty_detector.this
  id = "fa5b8da9d9664ec6ba28877e0a1cc881"
}
import {
  to = module.account_management.module.guardduty_us_west_2.aws_guardduty_detector.this
  id = "48fc3e71f3a44485a9e1d1cc7f29478a"
}
import {
  to = module.account_management.module.guardduty_me_central_1.aws_guardduty_detector.this
  id = "1cc78ae89f4a437aabe94ad60170674a"
}

import {
  to = module.account_management.module.guardduty_ap_northeast_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ap_northeast_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ap_northeast_3.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ap_south_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ap_southeast_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ap_southeast_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_ca_central_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_eu_central_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_eu_north_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_eu_west_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_eu_west_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_eu_west_3.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_sa_east_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_us_east_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_us_east_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_us_west_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_us_west_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.guardduty_me_central_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.global.aws_iam_role.aws_support_role[0]
  id = "AWSSupportRole"
}