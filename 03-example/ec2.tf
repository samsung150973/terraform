provider "aws" {
  region = "us-east-1"
}

# Bloack to Create an EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-004c65616d53d05f6"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Instance"
  }
}

# Block to print Private dns address
output "private_dns_of_ec2" {
    value = aws_instance.web.private_dns
  
}