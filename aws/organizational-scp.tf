# Service control policies do not apply to IAM principals in the root account
# Examples: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_examples.html#examples_config

# There is a hard limit of FIVE policies attachable to an OU. Bear in mind, AWS attaches FullAWSAccess so only 4 additional.
# The maximum size of a policy document is 5120 characters.
# https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-policies
# https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html

# Useful resource: https://asecure.cloud/l/scp/

######################################################################################
#
# Deny member accounts from disabling critical security services
#
######################################################################################
resource "aws_organizations_policy" "protect_critical_services" {
  name        = "ProtectCriticalServices"
  description = "Prevents member accounts from disabling or changing critical services"
  content = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Deny",
        "Action" : [
          # Access Analyzer
          "access-analyzer:DeleteAnalyzer",
          # Cloudtrail
          "cloudtrail:StopLogging",
          "cloudtrail:DeleteTrail",
          "cloudtrail:UpdateTrail",
          # Config
          "config:DeleteConfigRule",
          "config:DeleteConfigurationRecorder",
          "config:DeleteDeliveryChannel",
          "config:StopConfigurationRecorder",
          "config:DeleteConfigurationAggregator",
          # EBS
          "ec2:DisableEbsEncryptionByDefault",
          # GuardDuty
          "guardduty:AcceptInvitation",
          "guardduty:ArchiveFindings",
          "guardduty:CreateDetector",
          "guardduty:CreateFilter",
          "guardduty:CreateIPSet",
          "guardduty:CreateMembers",
          "guardduty:CreatePublishingDestination",
          "guardduty:CreateSampleFindings",
          "guardduty:CreateThreatIntelSet",
          "guardduty:DeclineInvitations",
          "guardduty:DeleteDetector",
          "guardduty:DeleteFilter",
          "guardduty:DeleteInvitations",
          "guardduty:DeleteIPSet",
          "guardduty:DeleteMembers",
          "guardduty:DeletePublishingDestination",
          "guardduty:DeleteThreatIntelSet",
          "guardduty:DisassociateFromMasterAccount",
          "guardduty:DisassociateMembers",
          "guardduty:InviteMembers",
          "guardduty:StartMonitoringMembers",
          "guardduty:StopMonitoringMembers",
          "guardduty:TagResource",
          "guardduty:UnarchiveFindings",
          "guardduty:UntagResource",
          "guardduty:UpdateDetector",
          "guardduty:UpdateFilter",
          "guardduty:UpdateFindingsFeedback",
          "guardduty:UpdateIPSet",
          "guardduty:UpdatePublishingDestination",
          "guardduty:UpdateThreatIntelSet",
          # IAM
          "iam:CreateUser",
          "iam:CreateAccessKey",
          # Organization
          "organizations:LeaveOrganization",
          # Macie
          "macie2:DisassociateFromMasterAccount",
          "macie2:DisableOrganizationAdminAccount",
          "macie2:DisableMacie",
          "macie2:DeleteMember",
          # S3
          "s3:PutAccountPublicAccessBlock",
          # SecurityHub
          "securityhub:DeleteInvitations",
          "securityhub:DisableSecurityHub",
          "securityhub:DisassociateFromMasterAccount",
          "securityhub:DeleteMembers",
          "securityhub:DisassociateMembers"
        ],
        "Resource" : "*",
        "Condition" : {
          "StringNotLike" : {
            "aws:PrincipalARN" : "arn:aws:iam::*:role/${var.organization_account_access_role}"
          }
        }
      },
      # Prevent Sharing Resources to External Principals outside the Organization
      # NOTE: This caused a deny when viewing details on resources "shared by me"
      # {
      #   "Effect" : "Deny",
      #   "Action" : "*",
      #   "Resource" : "*",
      #   "Condition" : {
      #     "Bool" : {
      #       "ram:AllowsExternalPrincipals" : "true"
      #     }
      #   }
      # }
    ]
  })
}

# resource "aws_organizations_policy_attachment" "protect_critical_services" {
#   policy_id = aws_organizations_policy.protect_critical_services.id
#   target_id = aws_organizations_organization.this.roots[0].id
# }

######################################################################################
#
# Deny member accounts from creating IAM Identity Center
#
######################################################################################
resource "aws_organizations_policy" "deny_member_account_instances_sso" {
  name        = "DenyMemberAccountInstancesofSSO"
  description = "Deny member accounts from creating an instance of SSO."

  content = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : {
      "Effect" : "Deny",
      "Action" : "sso:CreateInstance",
      "Resource" : "*",
      "Condition" : {
        "StringNotLike" : {
          "aws:PrincipalARN" : "arn:aws:iam::*:role/${var.organization_account_access_role}"
        }
      }
    }
  })
}

resource "aws_organizations_policy_attachment" "deny_member_account_instances_sso" {
  policy_id = aws_organizations_policy.deny_member_account_instances_sso.id
  target_id = aws_organizations_organization.this.roots[0].id
}

######################################################################################
#
# Restrict the use of the Root user in an AWS Account
#
######################################################################################
resource "aws_organizations_policy" "root_user" {
  name        = "DenyRootUserActions"
  description = "Restrict the use of the Root user in an AWS Account"

  content = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "*",
      "Resource" : "*",
      "Effect" : "Deny",
      "Condition" : {
        "StringLike" : {
          "aws:PrincipalArn" : [
            "arn:aws:iam::*:root"
          ]
        }
      }
    }]
  })
}

# resource "aws_organizations_policy_attachment" "root_user" {
#   policy_id = aws_organizations_policy.root_user.id
#   target_id = aws_organizations_organization.this.roots[0].id
# }
