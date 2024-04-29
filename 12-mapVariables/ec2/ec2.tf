data "aws_ami" "lab_ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["355449129696"]
}
resource "aws_instance" "local-module" {
  ami                        = data.aws_ami.lab_ami.id
  instance_type              = var.instance_type
  vpc_security_group_ids     = [var.sg]

  root_block_device {
    volume_size = var.volume_size # in GB <<----- I increased this!
    volume_type = var.volume_type
  }

  tags = {
    Name = var.component-var.env
  }
}

variable sg {}