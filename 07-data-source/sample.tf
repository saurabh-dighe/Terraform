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