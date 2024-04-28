resource "aws_instance" "sample" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t2.micro"
  count = 3                 #Count is a function used to create multiple resourses with similar properties

  tags = {
    Name = "tf-instance-${index[count]+1}"
  }
}

output "tf-private-IP" {
  value = aws_instance.sample.private_ip
}

# terraform console
# max(3, 5, 1)
# upper("saMple") 