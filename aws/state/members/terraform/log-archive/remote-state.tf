data "terraform_remote_state" "seeding" {
  backend = "s3"

  config = {
    region = "eu-west-1"
    bucket = "terraform-state-euw1-105561173654"
    key    = "seeding.tfstate"
  }
}

data "terraform_remote_state" "shared" {
  backend = "s3"

  config = {
    region = "eu-west-1"
    bucket = "terraform-state-euw1-105561173654"
    key    = "shared.tfstate"
  }
}
