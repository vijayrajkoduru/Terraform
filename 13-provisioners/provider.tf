terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  
  backend "s3" {
    bucket         = "vijaykumar-dev"
    key            = "docker-installation"
    region         = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}