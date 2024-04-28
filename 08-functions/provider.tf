provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "terraform-statefile-saurabh"
    key      = "dev/ec2/teraform.tfstate"
    region   = "us-east-1"
  }
}