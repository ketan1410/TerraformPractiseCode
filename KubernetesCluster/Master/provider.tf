provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}

data "aws_region" "current" {}

provider "http" {}

