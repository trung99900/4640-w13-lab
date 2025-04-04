terraform {
  backend "s3" {
    bucket         = "lab13-4640"
    key            = "terraform/state.tfstate"
    region         = "us-west-2"
    encrypt        = true
    use_lockfile = true
  }
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}