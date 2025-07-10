terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

## Africa

# Cape Town
# provider "aws" {
#   alias  = "af-south-1"
#   region = "af-south-1"
#   assume_role {
#     role_arn     = "arn:aws:iam::${var.account_id}:role/${var.assume_role}"
#     session_name = "terraform"
#   }
#   default_tags {
#     tags = {
#       ManagedBy = "Terraform"
#     }
#   }
# }

## Asia Pacific

# Mumbai
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
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
# Tokyo
provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
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
# Seoul
provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
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
# Osaka
provider "aws" {
  alias  = "ap-northeast-3"
  region = "ap-northeast-3"
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
# Singapore
provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
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
# Sydney
provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
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
# Hong Kong
provider "aws" {
  alias  = "ap-east-1"
  region = "ap-east-1"
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
# Hyderabad
provider "aws" {
  alias  = "ap-south-2"
  region = "ap-south-2"
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
# Jakarta
provider "aws" {
  alias  = "ap-southeast-3"
  region = "ap-southeast-3"
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
# Malaysia
provider "aws" {
  alias  = "ap-southeast-5"
  region = "ap-southeast-5"
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
# Melbourne
provider "aws" {
  alias  = "ap-southeast-4"
  region = "ap-southeast-4"
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
# Taipei
provider "aws" {
  alias  = "ap-east-2"
  region = "ap-east-2"
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
# Thailand
provider "aws" {
  alias  = "ap-southeast-7"
  region = "ap-southeast-7"
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

## Canada

# Central
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
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
# Calgary
provider "aws" {
  alias  = "ca-west-1"
  region = "ca-west-1"
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

## Europe

# Frankfurt
provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
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
# Ireland
provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
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
# London
provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
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
# Paris
provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
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
# Stockholm
provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
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
# Milan
provider "aws" {
  alias  = "eu-south-1"
  region = "eu-south-1"
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
# Spain
provider "aws" {
  alias  = "eu-south-2"
  region = "eu-south-2"
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
# Zurich
provider "aws" {
  alias  = "eu-central-2"
  region = "eu-central-2"
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

## Israel

# Tel Aviv
provider "aws" {
  alias  = "il-central-1"
  region = "il-central-1"
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

## Mexico

# Central
provider "aws" {
  alias  = "mx-central-1"
  region = "mx-central-1"
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

## Middle East

# UAE
provider "aws" {
  alias  = "me-central-1"
  region = "me-central-1"
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
# Bahrain
provider "aws" {
  alias  = "me-south-1"
  region = "me-south-1"
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

## South America

# Sao Paulo
provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
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

## United States

# N. Virginia
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
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
# Ohio
provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
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
# N. California
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
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
# Oregon
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
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
