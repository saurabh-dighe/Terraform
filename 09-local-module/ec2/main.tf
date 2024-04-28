resource "aws_instance" "local-module" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"
  security_groups = [var.sg]
  depends_on = [sg-module]
  tags = {
    Name = "tf-instance-dev"
  }
}

output "tf-private-IP" {
  value = aws_instance.local-module.private_ip
}

variable sg {}