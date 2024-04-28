data "aws_instance" "foo" {
#   instance_id = "i-instanceid"

  filter {
    name   = "tag:Name"
    values = ["Jenkins"]
  }
}

output "instance-ID" {
  value = data.aws_instance.foo.id
}

data "aws_ami" "custom_ami" {
  most_recent      = true
  name_regex       = "^DevOps-LabImage-Centos$"
  owners           = ["355449129696"]
}

output "custom_ami-ID" {
  value = data.aws_ami.custom_ami.id
}