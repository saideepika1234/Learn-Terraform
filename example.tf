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

data "aws_ami" "centos"{
    owners           =["973714476881"]
    most_recent      = true
    name_regex       = "Centos-8-DevOps-Practice"
}

output "ami"{
    value = data.aws_ami.centos.image_id
}