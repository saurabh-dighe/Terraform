output "sample-op" {
    value = var.sample 
}

output "sample-op-with-vars" {
    value = "Value of sample is ${var.sample}"  
}

output "sample" {
    value = "Sample output"
}

# output "list-print" {
#     value = var.list-ex
# }

output "list-ex-op" {
    value = "Name is ${var.list-ex[0]} and age is ${var.list-ex[1]} also he is ${var.list-ex[2]} tall"
}

output "map-ex-op" {
    value = "Name is ${var.map-ex[0]} and age is ${var.map-ex[1]} also he is ${var.map-ex[2]} tall"
}