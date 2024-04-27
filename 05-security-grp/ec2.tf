resource "aws_instance" "remote" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-instance-remote"
  }
}

output "tf-private-IP" {
  value = aws_instance.remote.private_ip
}
resource "aws_security_group" "remote-sg" {
  name   = "remote-sg"
  vpc_id = aws_vpc.remote-sg.id

  ingress = []
  egress  = []
}  