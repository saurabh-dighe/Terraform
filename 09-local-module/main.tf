module "ec2-module" {
  source = "./ec2"
  sg     = module.sg-module.sg-ID
}

module "sg-module" {
  source = "./sg"
}