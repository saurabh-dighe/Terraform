provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "terraform-statefile-saurabh"
    key      = "dev/dynamic-blocks/teraform.tfstate"
    region   = "us-east-1"
  }
}