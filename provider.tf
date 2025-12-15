terraform {
  # Remote backend to store Terraform state
  backend "s3" {
    bucket = "terraform-state-bucket-my-12345"   # ⚠️ replace with YOUR bucket name
    key    = "terraform/github/terraform.tfstate"
    region = "ap-south-1"
  }
}

# AWS provider configuration
provider "aws" {
  region = "ap-south-1"
}
