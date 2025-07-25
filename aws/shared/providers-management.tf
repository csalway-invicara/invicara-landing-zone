## DEFAULT REGION

provider "aws" {
  alias  = "management-default-region"
  region = var.default_region
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## OPT-IN REGIONS

provider "aws" {
  alias  = "management-me-central-1"
  region = "me-central-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

## DEFAULT REGIONS

provider "aws" {
  alias  = "management-ap-northeast-1"
  region = "ap-northeast-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-ap-northeast-2"
  region = "ap-northeast-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-ap-northeast-3"
  region = "ap-northeast-3"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-ap-south-1"
  region = "ap-south-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-ap-southeast-1"
  region = "ap-southeast-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-ap-southeast-2"
  region = "ap-southeast-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-ca-central-1"
  region = "ca-central-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-eu-central-1"
  region = "eu-central-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-eu-north-1"
  region = "eu-north-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-eu-west-1"
  region = "eu-west-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-eu-west-2"
  region = "eu-west-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-eu-west-3"
  region = "eu-west-3"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-sa-east-1"
  region = "sa-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-us-east-1"
  region = "us-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-us-east-2"
  region = "us-east-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-us-west-1"
  region = "us-west-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {
  alias  = "management-us-west-2"
  region = "us-west-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}