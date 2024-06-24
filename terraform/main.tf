
provider "aws" {
  region                  = "${var.region}"
}

terraform {
  required_providers {
    aws = "~> 2.28.1"
  }
}
