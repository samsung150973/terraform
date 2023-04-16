# Declaring remote backend for state file
terraform {
  backend "s3" {
    bucket = "b53-tfstate-bucket-mm"
    key    = "dev/ec2/terraform.tfstate"
    region = "us-east-1"
  }
}
