resource "aws_organizations_organization" "this" {
  feature_set = "ALL"
  # AWS recommend that you enable integration between AWS Organizations and the specified AWS service 
  # by using the console or commands that are provided by the specified service. Doing so ensures that 
  # the service is aware that it can create the resources that are required for the integration. How the 
  # service creates those resources in the organization's accounts depends on that service.
  # aws_service_access_principals = [
  #   "access-analyzer.amazonaws.com",
  #   "account.amazonaws.com",
  #   "cloudtrail.amazonaws.com",
  #   "compute-optimizer.amazonaws.com",
  #   #"controltower.amazonaws.com",
  #   "config.amazonaws.com",
  #   "config-multiaccountsetup.amazonaws.com",
  #   "cost-optimization-hub.bcm.amazonaws.com",
  #   #"fms.amazonaws.com",
  #   "guardduty.amazonaws.com",
  #   "health.amazonaws.com",
  #   "iam.amazonaws.com",
  #   #"inspector2.amazonaws.com",
  #   "malware-protection.guardduty.amazonaws.com",
  #   "member.org.stacksets.cloudformation.amazonaws.com",
  #   #"networkmanager.amazonaws.com",
  #   "ram.amazonaws.com",
  #   "reachabilityanalyzer.networkinsights.amazonaws.com",
  #   "securityhub.amazonaws.com",
  #   "sso.amazonaws.com"
  # ]
  enabled_policy_types = [
    #"AISERVICES_OPT_OUT_POLICY"
    #"BACKUP_POLICY"
    #"CHATBOT_POLICY"
    #"DECLARATIVE_POLICY_EC2",
    #"RESOURCE_CONTROL_POLICY",
    "SERVICE_CONTROL_POLICY"
    #"TAG_POLICY"
  ]
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      aws_service_access_principals
    ]
  }
}
