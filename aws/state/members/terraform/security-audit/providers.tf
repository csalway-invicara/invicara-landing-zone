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

## OPT-IN REGIONS

provider "aws" {
  alias  = "me-central-1"
  region = "me-central-1"
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

## DEFAULT REGIONS

provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
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
provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
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
provider "aws" {
  alias  = "ap-northeast-3"
  region = "ap-northeast-3"
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
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
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
provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
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
provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
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
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
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
provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
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
provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
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
provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
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
provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
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
provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
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
provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
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
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
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
provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
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
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
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
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
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
