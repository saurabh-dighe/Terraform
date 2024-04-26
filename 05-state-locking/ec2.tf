resource "aws_instance" "remote-locking" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-instance-dev"
  }
}

output "tf-private-IP" {
  value = aws_instance.remote-locking.private_ip
}