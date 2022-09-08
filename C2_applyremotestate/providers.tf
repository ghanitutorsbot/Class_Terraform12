terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "learn-s3-remote-backend-20220908161312232200000001"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "learn-terraform-s3-migrate-tfc"
    region         = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}