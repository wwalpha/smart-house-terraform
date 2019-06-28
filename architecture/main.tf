provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
  region                  = "${local.region}"
}

provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
  region                  = "${local.region_us2}"
  alias                   = "oregon"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-xxx"
    region = "ap-northeast-1"
    key    = "smart-house/architecture.tfstate"
  }

  required_version = ">= 0.12"
}

data "terraform_remote_state" "init" {
  backend = "s3"

  config = {
    bucket = "terraform-backend-xxx"
    region = "ap-northeast-1"
    key    = "smart-house/init.tfstate"
  }
}
