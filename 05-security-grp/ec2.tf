resource "aws_instance" "remote" {
  ami                       = "ami-072983368f2a6eab5"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [aws_security_group.remote-sg.id]

  tags = {
    Name = "tf-instance-remote"
  }
}

output "tf-private-IP" {
  value = aws_instance.remote.private_ip
}
resource "aws_security_group" "remote-sg" {
  name   = "remote-sg"
  vpc_id = "vpc-0b491c91c56da8a5b"

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    prefix_list_ids = ["0.0.0.0/0"]
    }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    prefix_list_ids = ["0.0.0.0/0"]
    }
  }  