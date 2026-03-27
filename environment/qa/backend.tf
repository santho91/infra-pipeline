terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }
  backend "s3" {
    bucket = "santoo-k8s"
    key    = "environments/qa/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "infra-terraform-lock"
  }
}

provider "aws" {
  region = var.aws_region
}