resource "aws_security_group" "local_module_sg" {
  name   = "local_module_sg"
  vpc_id = "vpc-0b491c91c56da8a5b"

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    }
}

output "sg-ID" {
  value = aws_security_group.local_module_sg.id
}