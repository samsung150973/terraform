# Declaring a Module with name ec2
module "ec2" {
    source = "./ec2"
    sg      =   module.sg.sg_id
}

# Declaring a Module with name sg
module "sg" {
    source = "./sg"
}
