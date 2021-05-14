terraform {
  backend "s3" {

    bucket         = "dev-terraform-state-tfstate"
    key            = "awsDev.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "dev-terrraform-tf-state"

  }

}

provider "aws" {
  region  = "ap-south-1"
  version = "~> 2.54.0"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
  }
}

data "aws_region" "current" {}