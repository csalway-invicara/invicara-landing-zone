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
