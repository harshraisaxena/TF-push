
variable "region" {

type = string
}

variable "ami" {

default = "ami-052064a798f08f0d3"
}

variable "instance_type" {

default = "t2.micro"
}

variable "env" {

default = "dev"
}
