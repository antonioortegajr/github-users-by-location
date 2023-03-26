# https://medium.com/@dblencowe/hosting-a-static-website-on-s3-using-terraform-0-12-aa5ffe4103e
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