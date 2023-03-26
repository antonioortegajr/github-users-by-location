variable "aws_region" {
  type = string
}

variable "domain_name" {
  type = string
}

provider "aws" {
  region = "us-east-1"
}

module "website" {
  source = "./.deploy/terraform/static-site"
  domain_name = "githubusersbylocation.com"
}