## DEFAULT REGION

provider "aws" {
  alias  = "logs-default-region"
  region = var.default_region
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## OPT-IN REGIONS

provider "aws" {
  alias  = "logs-me-central-1"
  region = "me-central-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## DEFAULT REGIONS

provider "aws" {
  alias  = "logs-ap-northeast-1"
  region = "ap-northeast-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-ap-northeast-2"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-ap-northeast-3"
  region = "ap-northeast-3"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-ap-south-1"
  region = "ap-south-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-ap-southeast-1"
  region = "ap-southeast-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-ap-southeast-2"
  region = "ap-southeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-ca-central-1"
  region = "ca-central-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-eu-central-1"
  region = "eu-central-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-eu-north-1"
  region = "eu-north-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-eu-west-1"
  region = "eu-west-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-eu-west-2"
  region = "eu-west-2"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-eu-west-3"
  region = "eu-west-3"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-sa-east-1"
  region = "sa-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-us-east-1"
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-us-east-2"
  region = "us-east-2"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-us-west-1"
  region = "us-west-1"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "logs-us-west-2"
  region = "us-west-2"
  assume_role {
    role_arn     = "arn:aws:iam::${local.accounts.log_archive.id}:role/${local.organization_account_access_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}