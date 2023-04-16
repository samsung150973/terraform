#create a new security group
resource "aws_security_group" "allow_ssh_sg" {
  name        = "b53_allow_ssh_sgm"
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