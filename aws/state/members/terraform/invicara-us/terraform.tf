terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  # A backend block cannot refer to named values (like 
  # input variables, locals, or data source attributes).
  backend "s3" {
    region       = "eu-west-1"
    bucket       = "terraform-state-euw1-105561173654"
    key          = "account/invicara-us.tfstate"
    use_lockfile = true
  }
}
