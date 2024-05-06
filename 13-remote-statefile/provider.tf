provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "saurabh-bucket-tf"
    key      = "dev/ec2/teraform.tfstate"
    region   = "us-east-1"
  }
}