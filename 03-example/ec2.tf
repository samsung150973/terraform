provider "aws" {
  region = "us-east-1"
}

# Bloack to Create an EC2 instance
resource "aws_instance" "web" {
  ami                   = "ami-004c65616d53d05f6"
  instance_type         = "t3.micro"
  vpc_security_group_ids = [aws_security_group.b53_allow_ssh_sgm.id] 

  tags = {
    Name = "Terraform_Instance"
  }
}

# Block to print Private dns address
output "private_dns_of_ec2" {
    value = aws_instance.web.private_dns
  
}

#create a new security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH traffic"
  # vpc_id      = aws_vpc.main.id   (will see it later)

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "b53_allow_ssh_sgm"
  }
}