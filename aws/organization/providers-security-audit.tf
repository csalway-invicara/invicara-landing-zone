provider "aws" {
  alias  = "security-audit-default-region"
  region = var.default_region
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## OPT-IN REGIONS

# UAE
provider "aws" {
  alias  = "security-audit-me-central-1"
  region = "me-central-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## DEFAULT REGIONS (DO NOT REMOVE)

# Tokyo
provider "aws" {
  alias  = "security-audit-ap-northeast-1"
  region = "ap-northeast-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-ap-northeast-2"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-ap-northeast-3"
  region = "ap-northeast-3"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Mumbai
provider "aws" {
  alias  = "security-audit-ap-south-1"
  region = "ap-south-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-ap-southeast-1"
  region = "ap-southeast-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-ap-southeast-2"
  region = "ap-southeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Canada Central
provider "aws" {
  alias  = "security-audit-ca-central-1"
  region = "ca-central-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Frankfurt
provider "aws" {
  alias  = "security-audit-eu-central-1"
  region = "eu-central-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-eu-north-1"
  region = "eu-north-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-eu-west-1"
  region = "eu-west-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-eu-west-2"
  region = "eu-west-2"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-eu-west-3"
  region = "eu-west-3"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Sao Paulo
provider "aws" {
  alias  = "security-audit-sa-east-1"
  region = "sa-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# N. Virginia
provider "aws" {
  alias  = "security-audit-us-east-1"
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-us-east-2"
  region = "us-east-2"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-us-west-1"
  region = "us-west-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
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
  alias  = "security-audit-us-west-2"
  region = "us-west-2"
  assume_role {
    role_arn     = "arn:aws:iam::${var.security_audit_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
