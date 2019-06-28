provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
  region                  = "${var.region}"
}

provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
  region                  = "us-west-2"
  alias                   = "oregon"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-xxx"
    region = "ap-northeast-1"
    key    = "smart-house/init.tfstate"
  }

  required_version = ">= 0.12"
}

