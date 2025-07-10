terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# home region
provider "aws" {
  region = var.default_region
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
