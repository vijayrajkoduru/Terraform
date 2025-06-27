terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  
  backend "s3" {
    bucket         = "expense-project-1"
    key            = "VPN"
    region         = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}