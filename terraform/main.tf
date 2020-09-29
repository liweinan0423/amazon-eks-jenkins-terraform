
provider "aws" {
  region                  = "${var.region}"
}

terraform {
  required_providers {
    aws = "~> 2.28.1"
  }
  backend "s3" {
    bucket = "toc-jenkins-terraform-state"
    region = "us-west-2"
    key = "base/terraform.tfstate"
  }
}
