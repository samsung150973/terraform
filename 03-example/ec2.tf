provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = ami-004c65616d53d05f6
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Instance"
  }
}