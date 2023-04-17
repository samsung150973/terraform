
# Bloack to Create an EC2 instance
resource "aws_instance" "web" {
  ami                   = "data.aws_ami.my_ami.image_id"
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