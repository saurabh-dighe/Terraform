module "ec2-module" {
  source = "./ec2"
  sg     = module.sg-module.sg-ID
#   depends_on = [module.sg-module]
}

module "sg-module" {
  source = "./sg"
}

output "sg-id" {
  value = module.sg-module.sg-ID
}