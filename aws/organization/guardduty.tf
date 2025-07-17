# OPT-IN-REGIONS
module "guardduty_me_central_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-me-central-1
    aws.admin = aws.security-audit-me-central-1
  }
}

# DEFAULT REGIONS (DO NOT REMOVE)
module "guardduty_ap_northeast_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ap-northeast-1
    aws.admin = aws.security-audit-ap-northeast-1
  }
}
module "guardduty_ap_northeast_2" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ap-northeast-2
    aws.admin = aws.security-audit-ap-northeast-2
  }
}
module "guardduty_ap_northeast_3" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ap-northeast-3
    aws.admin = aws.security-audit-ap-northeast-3
  }
}
module "guardduty_ap_south_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ap-south-1
    aws.admin = aws.security-audit-ap-south-1
  }
}
module "guardduty_ap_southeast_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ap-southeast-1
    aws.admin = aws.security-audit-ap-southeast-1
  }
}
module "guardduty_ap_southeast_2" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ap-southeast-2
    aws.admin = aws.security-audit-ap-southeast-2
  }
}
module "guardduty_ca_central_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-ca-central-1
    aws.admin = aws.security-audit-ca-central-1
  }
}
module "guardduty_eu_central_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-eu-central-1
    aws.admin = aws.security-audit-eu-central-1
  }
}
module "guardduty_eu_north_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-eu-north-1
    aws.admin = aws.security-audit-eu-north-1
  }
}
module "guardduty_eu_west_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-eu-west-1
    aws.admin = aws.security-audit-eu-west-1
  }
}
module "guardduty_eu_west_2" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-eu-west-2
    aws.admin = aws.security-audit-eu-west-2
  }
}
module "guardduty_eu_west_3" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-eu-west-3
    aws.admin = aws.security-audit-eu-west-3
  }
}
module "guardduty_sa_east_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-sa-east-1
    aws.admin = aws.security-audit-sa-east-1
  }
}
module "guardduty_us_east_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-us-east-1
    aws.admin = aws.security-audit-us-east-1
  }
}
module "guardduty_us_east_2" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-us-east-2
    aws.admin = aws.security-audit-us-east-2
  }
}
module "guardduty_us_west_1" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-us-west-1
    aws.admin = aws.security-audit-us-west-1
  }
}
module "guardduty_us_west_2" {
  source = "../modules/guardduty"
  providers = {
    aws.root  = aws.root-us-west-2
    aws.admin = aws.security-audit-us-west-2
  }
}
