terraform {
  backend "s3" {
    bucket = "backend-mai-azure-tf" # Will be overridden from build
    key    = "path/to/my/key" # Will be overridden from build
    region = "us-east-1"
  }
}