variable "sample" {
    default = "This is sample comment"
}

output "vars-op" {
    value = var.sample 
}

output "sample-op" {
    value = "Value of sample is ${var.sample}"  
}