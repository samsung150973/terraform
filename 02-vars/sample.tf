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
