provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "azure-mai-backend-terraform" # Will be overridden from build
    key    = "path/to/my/key" # Will be overridden from build
    region = "us-east-1"
  }
}