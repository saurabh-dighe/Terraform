provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "terraform-statefile-saurabh"
    key      = "function/teraform.tfstate"
    region   = "us-east-1"
  }
}