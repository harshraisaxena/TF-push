
provider "aws" {

region = var.region
}

data "aws_ami" "myami" {

most_recent = true
owners = ["amazon"]
filter {
name = "name"
values = ["amzn2-ami-hvm*"]
}
filter {
name = "architecture"
values = ["x86_64"]
}
}


resource "aws_instance" "myec2" {

  ami = data.aws_ami.myami.id
  instance_type = var.instance_type

  tags = {
  Name = var.env

}
}
