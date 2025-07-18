import {
  to = aws_organizations_organization.this
  id = "o-220mjpqkuw"
}
import {
  to = aws_organizations_organizational_unit.infrastrcture
  id = "ou-rlp5-cqagth7m"
}
import {
  to = aws_organizations_organizational_unit.security
  id = "ou-rlp5-r0j284sh"
}
import {
  to = aws_organizations_organizational_unit.workloads
  id = "ou-rlp5-4vfwncut"
}
import {
  to = aws_organizations_account.management
  id = "105561173654"
}
import {
  to = aws_organizations_account.log_archive
  id = "828512280012"
}
import {
  to = aws_organizations_account.security_audit
  id = "476569303854"
}
import {
  to = aws_organizations_account.account_1
  id = "681696216733"
}
import {
  to = aws_organizations_account.account_2
  id = "980989823194"
}
import {
  to = aws_organizations_account.invicara_us
  id = "550983980260"
}
import {
  to = aws_organizations_account.invicara_global
  id = "970333330357"
}
import {
  to = aws_organizations_account.invicara_ireland
  id = "366349374946"
}
import {
  to = aws_organizations_account.networking
  id = "942010117991"
}

import {
  to = aws_organizations_policy.protect_critical_services
  id = "p-oenjv0m3"
}
import {
  to = aws_organizations_policy.deny_member_account_instances_sso
  id = "p-ut4s960i"
}
import {
  to = aws_organizations_policy.root_user
  id = "p-2v2ln54w"
}

import {
  to = module.account_management.module.global.module.cloudtrail.aws_cloudtrail.this
  id = "arn:aws:cloudtrail:eu-west-1:105561173654:trail/Organization"
}
import {
  to = module.account_management.module.global.module.cloudtrail.aws_kms_key.cloudtrail
  id = "75a554f1-50a8-42ae-87fb-343a09c4d1cb"
}
import {
  to = module.account_management.module.global.module.cloudtrail.aws_kms_alias.cloudtrail
  id = "alias/cloudtrail"
}

import {
  to = module.account_management.module.global.aws_securityhub_account.this
  id = "105561173654"
}
import {
  to = module.account_management.module.global.aws_securityhub_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_security_audit.module.global.aws_securityhub_account.this
  id = "476569303854"
}
import {
  to = module.account_security_audit.module.global.aws_securityhub_finding_aggregator.this
  id = "arn:aws:securityhub:eu-west-1:476569303854:finding-aggregator/76cbd13e-84fc-82c8-bb3d-6967dbe16e97"
}
import {
  to = module.account_security_audit.module.global.aws_securityhub_configuration_policy.org
  id = "e792313d-7831-4def-9842-c028f03cff54"
}

import {
  to = module.account_management.module.region_ap_northeast_1.aws_guardduty_detector.this
  id = "9676ca32434747c4bb64e0309bc2caec"
}
import {
  to = module.account_management.module.region_ap_northeast_2.aws_guardduty_detector.this
  id = "8c3ded0a9fe8477cace27006f0beef7c"
}
import {
  to = module.account_management.module.region_ap_northeast_3.aws_guardduty_detector.this
  id = "b7d3c746e86c41e0b61a2bb04bf3d845"
}
import {
  to = module.account_management.module.region_ap_south_1.aws_guardduty_detector.this
  id = "a17f5fd861294792ba61d6989a235011"
}
import {
  to = module.account_management.module.region_ap_southeast_1.aws_guardduty_detector.this
  id = "da94fdc42ceb4f0292e4eb3adc4123e9"
}
import {
  to = module.account_management.module.region_ap_southeast_2.aws_guardduty_detector.this
  id = "535d6459bda94f6689c8bd7103102644"
}
import {
  to = module.account_management.module.region_ca_central_1.aws_guardduty_detector.this
  id = "bc2a00b672b64f898083645fd4d832f0"
}
import {
  to = module.account_management.module.region_eu_central_1.aws_guardduty_detector.this
  id = "af0d240bf67c4df99149ab6d19b4e3b3"
}
import {
  to = module.account_management.module.region_eu_north_1.aws_guardduty_detector.this
  id = "fdee5eb3b0e04bbfb86afd9180db6924"
}
import {
  to = module.account_management.module.region_eu_west_1.aws_guardduty_detector.this
  id = "cacbd150b656b372071e5c0697b8b4dc"
}
import {
  to = module.account_management.module.region_eu_west_2.aws_guardduty_detector.this
  id = "621e7b5f60d14f269318bc269449e271"
}
import {
  to = module.account_management.module.region_eu_west_3.aws_guardduty_detector.this
  id = "7dafb55f64e24ed1979db431399abf0f"
}
import {
  to = module.account_management.module.region_sa_east_1.aws_guardduty_detector.this
  id = "b10e43924ec145cf8d3fbc33517ab3ea"
}
import {
  to = module.account_management.module.region_us_east_1.aws_guardduty_detector.this
  id = "d4cc06d52727db31da66e63896667d71"
}
import {
  to = module.account_management.module.region_us_east_2.aws_guardduty_detector.this
  id = "b0cc06d65ffec542aed27e7a814fecca"
}
import {
  to = module.account_management.module.region_us_west_1.aws_guardduty_detector.this
  id = "fa5b8da9d9664ec6ba28877e0a1cc881"
}
import {
  to = module.account_management.module.region_us_west_2.aws_guardduty_detector.this
  id = "48fc3e71f3a44485a9e1d1cc7f29478a"
}
import {
  to = module.account_management_me_central_1.aws_guardduty_detector.this
  id = "1cc78ae89f4a437aabe94ad60170674a"
}

import {
  to = module.account_management.module.region_ap_northeast_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_ap_northeast_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_ap_northeast_3.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_ap_south_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_ap_southeast_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_ap_southeast_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_ca_central_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_eu_central_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_eu_north_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_eu_west_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_eu_west_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_eu_west_3.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_sa_east_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_us_east_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_us_east_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_us_west_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management.module.region_us_west_2.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.account_management_me_central_1.aws_guardduty_organization_admin_account.this
  id = "476569303854"
}

import {
  to = module.account_security_audit.module.region_ap_northeast_1.aws_guardduty_detector.this
  id = "19e276410a0147d9b00844dae12c5034"
}
import {
  to = module.account_security_audit.module.region_ap_northeast_2.aws_guardduty_detector.this
  id = "f59ec58e41874cfd98fe307cd295c613"
}
import {
  to = module.account_security_audit.module.region_ap_northeast_3.aws_guardduty_detector.this
  id = "879e0f39c0f54a71a7a9ad5a2ac4f84a"
}
import {
  to = module.account_security_audit.module.region_ap_south_1.aws_guardduty_detector.this
  id = "631299e7146347e5864410a006c12fc0"
}
import {
  to = module.account_security_audit.module.region_ap_southeast_1.aws_guardduty_detector.this
  id = "a7724b2f8e304e45b5b19391da9872fe"
}
import {
  to = module.account_security_audit.module.region_ap_southeast_2.aws_guardduty_detector.this
  id = "725e5ef62a434379bb87a3b222e55d75"
}
import {
  to = module.account_security_audit.module.region_ca_central_1.aws_guardduty_detector.this
  id = "99c5c28dcbeb4f408a530e5a6cd37a5e"
}
import {
  to = module.account_security_audit.module.region_eu_central_1.aws_guardduty_detector.this
  id = "51cd41e917f34b99bf8a69afd8be81f4"
}
import {
  to = module.account_security_audit.module.region_eu_north_1.aws_guardduty_detector.this
  id = "46cb833acbe246fdb6de775db7c83c9b"
}
import {
  to = module.account_security_audit.module.region_eu_west_1.aws_guardduty_detector.this
  id = "6ecbd150ea63b7260a2fac8ed83f94f8"
}
import {
  to = module.account_security_audit.module.region_eu_west_2.aws_guardduty_detector.this
  id = "ce57af6d531c4b419080448de5b86d79"
}
import {
  to = module.account_security_audit.module.region_eu_west_3.aws_guardduty_detector.this
  id = "f77d0365eb7a4d869381e5b69794cbea"
}
import {
  to = module.account_security_audit.module.region_sa_east_1.aws_guardduty_detector.this
  id = "384966284a6e4fcc91d0f1d4230a1d44"
}
import {
  to = module.account_security_audit.module.region_us_east_1.aws_guardduty_detector.this
  id = "9792619d16c6442b9ece1cce8cf0036e"
}
import {
  to = module.account_security_audit.module.region_us_east_2.aws_guardduty_detector.this
  id = "726df81ee23a44b6b87e6acd710c0a93"
}
import {
  to = module.account_security_audit.module.region_us_west_1.aws_guardduty_detector.this
  id = "0aa29588f47d42c5a660ce5743ab0ef3"
}
import {
  to = module.account_security_audit.module.region_us_west_2.aws_guardduty_detector.this
  id = "c320e62238f74f618184e2b806b61209"
}
import {
  to = module.account_security_audit_me_central_1.aws_guardduty_detector.this
  id = "80cc09ab4686cd4fb589d6594124c21a"
}

import {
  to = module.account_log_archive.module.default_region.module.cloudtrail_logs_bucket.aws_s3_bucket.this
  id = "aws-cloudtrail-logs-eu-west-1-828512280012"
}
import {
  to = module.account_log_archive.module.default_region.module.config_logs_bucket.aws_s3_bucket.this
  id = "aws-config-logs-eu-west-1-828512280012"
}

import {
  to = module.account_management.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_log_archive.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_security_audit.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_account_1_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_account_2_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_account_3_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_invicara_us_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_invicara_global_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_invicara_ireland_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}
import {
  to = module.account_networking_blueprint.module.global.module.foundation.aws_iam_role.aws_support_role
  id = "AWSSupportRole"
}

# import {
#   to = aws_account_region.management_me_central_1
#   id = "me-central-1"
# }
# import {
#   to = aws_account_region.security_audit_me_central_1
#   id = "me-central-1"
# }
