# Terraform configuration for query demo showcase
terraform {
  required_version = ">= 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }

  # Local state backend
  backend "local" {
    path = "terraform.tfstate"
  }
}
