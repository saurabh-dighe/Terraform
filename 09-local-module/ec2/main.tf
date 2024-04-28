resource "aws_instance" "local-module" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t2.micro"
#   security_groups = [var.sg]
  tags = {
    Name = "tf-instance-dev"
  }
}

output "tf-private-IP" {
  value = aws_instance.local-module.private_ip
}

variable sg {}