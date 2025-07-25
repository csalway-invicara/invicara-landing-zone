provider "aws" {
  region = var.default_region
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
