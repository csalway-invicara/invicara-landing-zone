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
