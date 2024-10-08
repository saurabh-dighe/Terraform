module "ec2-module" {
  for_each      = var.COMPONENTS

  source        = "./ec2"
  sg            = module.sg-module.sg-ID
  component     = each.key
  instance_type = each.value.instance_type
  volume_type   = each.value.volume_type
  volume_size   = each.value.volume_size
}

module "sg-module" {
  source        = "./sg"
}

# output "sg-id" {
#   value       = module.sg-module.sg-ID
# }
# output "private_ip" {
#   value       = module.ec2-module.tf-private-IP
# }