resource "aws_instance" "web" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"

  tags = {
    Name = "tf-instance-dev"
  }
}

output "tf-private-IP" {
  value = aws_instance.web.private_ip
}