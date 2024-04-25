# output "list-print" {
#     value = var.list-ex
# }

output "list-ex-op" {
    value = "Name is ${var.list-ex[0]} and age is ${var.list-ex[1]} also he is ${var.list-ex[1]} tall"
}