
# Bloack to Create an EC2 instance
resource "aws_instance" "web" {
  ami                   = "ami-004c65616d53d05f6"
  instance_type         = "t3.micro"
  vpc_security_group_ids = [var.sg] 

  tags = {
    Name = "Terraform_Instance"
  }
}

variable "sg" {}

output "private_dns" {
    value = aws_instance.web.private_dns
}