variable "sample" {
    default     = "welcome to terraform"
}

output "sample_op" {
    value       = var.sample
}

output "sample_op1" {
    value       = "value of sample variable is ${var.sample}"
}

variable "integer" {
    default = 1000
}

output "number" {
    value = var.integer
}

# list variables
 variable "sample_list" {
    default = [
        "terraform",
        "Training",
        "pulumi",
        "cloud formation",
        120,
        true
    ]
 }
output "List_vars_op" {
    value = "Welcome to ${var.sample_list[0]} ${var.sample_list[1]} and duration is ${var.sample_list[4]}"
}

# map variables
 variable "sample_mapvar" {
    default = {
        Mode = "online"
        Training = "devops"
        Timing = "0730am_IST"
    
    }
 }
output "List_mapvars_op" {
    value = "Welcome to ${var.sample_mapvar["Mode"]} ${var.sample_mapvar["Training"]} at ${var.sample_mapvar["Timing"]}"
}

#declare an empty variable
variable "city" {}

output "city_name" {
    value = var.city
}

# declaring a variable on file other tan terraform.tfvas file

variable "state" {}

output = "state_name_op" {
    value = "name of the state is ${var.state}"
}
  


