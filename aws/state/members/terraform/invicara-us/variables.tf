variable "default_region" {
  type    = string
  default = "eu-west-2"
}
variable "enabled_regions" {
  type = set(string)
  default = [
    ## OPT-IN REGIONS
    # "af-south-1",
    # "ap-east-1",
    # "ap-east-2",
    # "ap-south-2",
    # "ap-southeast-3",
    # "ap-southeast-4",
    # "ap-southeast-5",
    # "ap-southeast-7",
    # "ca-west-1",
    # "eu-central-2",
    # "eu-south-1",
    # "eu-south-2",
    # "il-central-1",
    "me-central-1",
    # "me-south-1",
    # "mx-central-1",
    ## DEFAULT REGIONS
    "ap-northeast-1",
    "ap-northeast-2",
    "ap-northeast-3",
    "ap-south-1",
    "ap-southeast-1",
    "ap-southeast-2",
    "ca-central-1",
    "eu-central-1",
    "eu-north-1",
    "eu-west-1",
    "eu-west-2",
    "eu-west-3",
    "sa-east-1",
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2"
  ]
}