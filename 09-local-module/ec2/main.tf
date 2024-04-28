resource "aws_instance" "local" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"
  security_groups = sg

  tags = {
    Name = "tf-instance-dev"
  }
}

output "tf-private-IP" {
  value = aws_instance.local.private_ip
}

variable sg {}