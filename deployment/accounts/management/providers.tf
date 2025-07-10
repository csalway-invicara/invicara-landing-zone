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
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## Asia Pacific

# Mumbai
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
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
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}