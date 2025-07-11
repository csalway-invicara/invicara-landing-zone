module "us_east_1" {
  source                  = "../"
  providers               = { aws = aws.us-east-1 }
}
module "us_east_2" {
  source                  = "../"
  providers               = { aws = aws.us-east-2 }
}
module "us_west_1" {
  source                  = "../"
  providers               = { aws = aws.us-west-1 }
}
module "us_west_2" {
  source                  = "../"
  providers               = { aws = aws.us-west-2 }
}
module "ap_south_1" {
  source                  = "../"
  providers               = { aws = aws.ap-south-1 }
}
module "ap_northeast_3" {
  source                  = "../"
  providers               = { aws = aws.ap-northeast-3 }
}
module "ap_northeast_2" {
  source                  = "../"
  providers               = { aws = aws.ap-northeast-2 }
}
module "ap_southeast_1" {
  source                  = "../"
  providers               = { aws = aws.ap-southeast-1 }
}
module "ap_southeast_2" {
  source                  = "../"
  providers               = { aws = aws.ap-southeast-2 }
}
module "ap_northeast_1" {
  source                  = "../"
  providers               = { aws = aws.ap-northeast-1 }
}
module "ca_central_1" {
  source                  = "../"
  providers               = { aws = aws.ca-central-1 }
}
module "eu_central_1" {
  source                  = "../"
  providers               = { aws = aws.eu-central-1 }
}
module "eu_west_1" {
  source                  = "../"
  providers               = { aws = aws.eu-west-1 }
}
module "eu_west_2" {
  source                  = "../"
  providers               = { aws = aws.eu-west-2 }
}
module "eu_west_3" {
  source                  = "../"
  providers               = { aws = aws.eu-west-3 }
}
module "eu_north_1" {
  source                  = "../"
  providers               = { aws = aws.eu-north-1 }
}
module "sa_east_1" {
  source                  = "../"
  providers               = { aws = aws.sa-east-1 }
}
