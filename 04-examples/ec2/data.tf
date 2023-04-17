
data "aws_ami" "my_ami" {
    most_recent      = true
  name_regex       = "Lab-AMI-With-Ansible_Installed"
 // owners           = ["self"]
}