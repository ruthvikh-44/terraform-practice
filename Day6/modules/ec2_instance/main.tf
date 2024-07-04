provider "aws" {
  region = "ap-southeast-2"
}

variable "ami" {
  description = "value of AMI ID of the instance"
}

variable "instance_type" {
  description = "value of EC2 instance type"
}
resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = "subnet-0db4bf9fff0d69b9b"
}