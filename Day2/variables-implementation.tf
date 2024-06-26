variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  description = "value of AMI ID"
  type = string
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "exampleInstance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = "aws_login"
  subnet_id = "subnet-0db4bf9fff0d69b9b"
}

output "publicIp" {
  description = "public IP address of the EC2 instance"
  value = aws_instance.exampleInstance.public_ip
}