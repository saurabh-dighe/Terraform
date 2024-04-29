data "aws_ami" "lab_ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["355449129696"]
}
resource "aws_instance" "local-module" {
  ami                        = data.aws_ami.lab_ami.id
  instance_type              = var.component
  vpc_security_group_ids     = [var.sg]

  tags = {
    Name = "tf-instance-dev"
  }
}

variable sg {}