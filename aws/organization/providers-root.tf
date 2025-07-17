provider "aws" {
  alias  = "root-default-region"
  region = var.default_region
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## OPT-IN REGIONS

# UAE
provider "aws" {
  alias  = "root-me-central-1"
  region = "me-central-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## DEFAULT REGIONS (DO NOT REMOVE)

# Tokyo
provider "aws" {
  alias  = "root-ap-northeast-1"
  region = "ap-northeast-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Seoul
provider "aws" {
  alias  = "root-ap-northeast-2"
  region = "ap-northeast-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Osaka
provider "aws" {
  alias  = "root-ap-northeast-3"
  region = "ap-northeast-3"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Mumbai
provider "aws" {
  alias  = "root-ap-south-1"
  region = "ap-south-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Singapore
provider "aws" {
  alias  = "root-ap-southeast-1"
  region = "ap-southeast-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Sydney
provider "aws" {
  alias  = "root-ap-southeast-2"
  region = "ap-southeast-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Canada Central
provider "aws" {
  alias  = "root-ca-central-1"
  region = "ca-central-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Frankfurt
provider "aws" {
  alias  = "root-eu-central-1"
  region = "eu-central-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Stockholm
provider "aws" {
  alias  = "root-eu-north-1"
  region = "eu-north-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Ireland
provider "aws" {
  alias  = "root-eu-west-1"
  region = "eu-west-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# London
provider "aws" {
  alias  = "root-eu-west-2"
  region = "eu-west-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Paris
provider "aws" {
  alias  = "root-eu-west-3"
  region = "eu-west-3"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Sao Paulo
provider "aws" {
  alias  = "root-sa-east-1"
  region = "sa-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# N. Virginia
provider "aws" {
  alias  = "root-us-east-1"
  region = "us-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Ohio
provider "aws" {
  alias  = "root-us-east-2"
  region = "us-east-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# N. California
provider "aws" {
  alias  = "root-us-west-1"
  region = "us-west-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
# Oregon
provider "aws" {
  alias  = "root-us-west-2"
  region = "us-west-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}