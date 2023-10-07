resource "aws_instance" "sample" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform"
  }
}

output "sample" {
    value = aws_instance.sample.public_ip
}