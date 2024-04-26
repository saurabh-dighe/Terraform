provider "aws" {}

terraform {
  backend "s3" {
    bucket          = "terraform-statefile-saurabh"
    key             = "dev/dynamoDB/teraform.tfstate"
    region          = "us-east-1"
    dynamodb_table  = "terraform-locking"
  }
}