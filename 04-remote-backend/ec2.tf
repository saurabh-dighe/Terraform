resource "aws_instance" "remote" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"

  tags = {
    Name = "tf-instance-remote"
  }
}

output "tf-private-IP" {
  value = aws_instance.remote.private_ip
}