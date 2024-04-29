data "aws_ami" "lab_ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["355449129696"]
}
resource "aws_instance" "local-module" {
  ami                        = data.aws_ami.lab_ami.id
  instance_type              = local.BU == "SAAS" ? "t3.medium" : "t3.micro"  #If condition satisfies it will take 1st value otherwise 2nd value
  vpc_security_group_ids     = [aws_security_group.terraform_sg.id]

  tags = local.dev_tag
}

output "tf-private-IP" {
  value = aws_instance.local-module.private_ip
}
