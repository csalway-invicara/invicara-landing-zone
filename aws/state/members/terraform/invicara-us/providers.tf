## MANAGEMENT

provider "aws" {
  region = var.default_region
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## DEFAULT REGION

provider "aws" {
  alias  = "default-region"
  region = var.default_region
  assume_role {
    role_arn     = "arn:aws:iam::${local.account_id}:role/${local.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## ENABLED REGIONS

provider "aws" {
  for_each = var.enabled_regions
  alias    = "regions"
  region = each.key
  assume_role {
    role_arn     = "arn:aws:iam::${local.account_id}:role/${local.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
