terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}