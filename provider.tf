terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  cloud {

    organization = "Lauratest223"

    workspaces {
      name = "test"
    }
  }
}



provider "aws" {
  region = "us-east-1"
}