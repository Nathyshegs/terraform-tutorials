provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 1.0"

# For testing purposes, we will use the local backend which is the default option
  backend "local" {
    path = "dev/vpc/terraform.tfstate"   
  }

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.62"
    }
  }
}