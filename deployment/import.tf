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
  to = aws_organizations_account.networking
  id = "942010117991"
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
  to = aws_organizations_account.account_1
  id = "681696216733"
}
import {
  to = aws_organizations_account.account_2
  id = "980989823194"
}

import {
  to = module.account_log_archive.module.cloudtrail_logs_bucket.aws_s3_bucket.this
  id = "aws-cloudtrail-logs-eu-west-1-828512280012"
}
import {
  to = module.account_log_archive.module.config_logs_bucket.aws_s3_bucket.this
  id = "aws-config-logs-eu-west-1-828512280012"
}

import {
  to = module.securityhub_organization.aws_securityhub_account.this
  id = "105561173654"
}
import {
  to = module.securityhub_organization.aws_securityhub_organization_admin_account.this
  id = "476569303854"
}
import {
  to = module.securityhub_organization.aws_securityhub_finding_aggregator.this
  id = "arn:aws:securityhub:eu-west-1:476569303854:finding-aggregator/76cbd13e-84fc-82c8-bb3d-6967dbe16e97"
}
