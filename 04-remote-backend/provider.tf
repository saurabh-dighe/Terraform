provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "terraform-statefilr-saurabh"
    key      = "dev/ec2"
  }
}