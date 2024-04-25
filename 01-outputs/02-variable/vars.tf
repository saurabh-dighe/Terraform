variable "sample" {
    default = "This is sample comment"
}

output "sample-op" {
    value = "Value of sample is ${var.sample}"  
}