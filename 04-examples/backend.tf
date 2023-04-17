provider "aws" {
  region = "us-east-1"
}

# Declaring remote backend for state file
terraform {
  backend "s3" {
    bucket = "b53-tfstate-bucket-mm"
    key    = "modules/tf/terraform.tfstate"
    region = "us-east-1"
  }
}
