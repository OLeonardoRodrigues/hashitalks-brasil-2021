terraform {
  required_version = "= 1.0.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.67.0"
    }
  }

  experiments = [module_variable_optional_attrs]
}

provider "aws" {
  region = "us-east-1"
}
