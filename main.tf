provider "aws" {
  region = "eu-central-1"
}

terraform {
    backend "s3" {
   bucket = "terraform-bucket-christina" 
    key = "terraform.tfstate"
    region = "eu-central-1"
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"

  tags = {
    Owner = "Christina"
  }
}