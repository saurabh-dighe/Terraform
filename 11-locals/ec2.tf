data "aws_ami" "lab_ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["355449129696"]
}
resource "aws_instance" "local-module" {
  ami                        = data.aws_ami.lab_ami.id
  instance_type              = "t2.micro"
  vpc_security_group_ids     = [aws_security_group.terraform_sg.id]

  tags = {
    Name     = "tf-instance"
    owners   = local.owners
    cost     = local.cost
    director = local.director
  }
}

output "tf-private-IP" {
  value = aws_instance.local-module.private_ip
}
