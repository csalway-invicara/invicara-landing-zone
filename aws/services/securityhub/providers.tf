provider "aws" {
  alias  = "management"
  region = var.default_region
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

provider "aws" {
  alias  = "admin"
  region = var.default_region
  assume_role {
    role_arn     = "arn:aws:iam::${var.admin_account_id}:role/${var.assume_role}"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
