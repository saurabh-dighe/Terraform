variable "sample" {
    default = "Terraform"
}

output "sample-op" {
    value = var.sample 
}

output "sample-op-with-vars" {
    value = "Value of sample is ${var.sample}"  
}