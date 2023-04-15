variable "sample" {
    default     = "welcome to terraform"
}

output "sample_op" {
    value       = var.sample
}

output "sample_op" {
    value       = "value of sample variable is ${var.sample}"
}