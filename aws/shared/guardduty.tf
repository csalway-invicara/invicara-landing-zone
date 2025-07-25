## OPT-IN REGIONS

module "guardduty_me_central_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-me-central-1
    aws.admin      = aws.security-me-central-1
  }
}

## DEFAULT REGIONS

module "guardduty_ap_northeast_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ap-northeast-1
    aws.admin      = aws.security-ap-northeast-1
  }
}
module "guardduty_ap_northeast_2" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ap-northeast-2
    aws.admin      = aws.security-ap-northeast-2
  }
}
module "guardduty_ap_northeast_3" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ap-northeast-3
    aws.admin      = aws.security-ap-northeast-3
  }
}
module "guardduty_ap_south_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ap-south-1
    aws.admin      = aws.security-ap-south-1
  }
}
module "guardduty_ap_southeast_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ap-southeast-1
    aws.admin      = aws.security-ap-southeast-1
  }
}
module "guardduty_ap_southeast_2" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ap-southeast-2
    aws.admin      = aws.security-ap-southeast-2
  }
}
module "guardduty_ca_central_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-ca-central-1
    aws.admin      = aws.security-ca-central-1
  }
}
module "guardduty_eu_central_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-eu-central-1
    aws.admin      = aws.security-eu-central-1
  }
}
module "guardduty_eu_north_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-eu-north-1
    aws.admin      = aws.security-eu-north-1
  }
}
module "guardduty_eu_west_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-eu-west-1
    aws.admin      = aws.security-eu-west-1
  }
}
module "guardduty_eu_west_2" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-eu-west-2
    aws.admin      = aws.security-eu-west-2
  }
}
module "guardduty_eu_west_3" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-eu-west-3
    aws.admin      = aws.security-eu-west-3
  }
}
module "guardduty_sa_east_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-sa-east-1
    aws.admin      = aws.security-sa-east-1
  }
}
module "guardduty_us_east_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-us-east-1
    aws.admin      = aws.security-us-east-1
  }
}
module "guardduty_us_east_2" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-us-east-2
    aws.admin      = aws.security-us-east-2
  }
}
module "guardduty_us_west_1" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-us-west-1
    aws.admin      = aws.security-us-west-1
  }
}
module "guardduty_us_west_2" {
  source = "./guardduty"
  providers = {
    aws.management = aws.management-us-west-2
    aws.admin      = aws.security-us-west-2
  }
}