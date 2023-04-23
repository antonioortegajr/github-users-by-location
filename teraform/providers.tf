provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}

terraform {
  required_version = "~> 1.4.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "githubusersbylocation-terraform"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}