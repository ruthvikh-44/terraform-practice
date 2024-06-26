    provider "aws" {
      region = "ap-southeast-2" 
    }

    resource "aws_instance" "example" {
      ami           = "ami-080660c9757080771" #specify appropriate AMI ID
      instance_type = "t2.micro"
      subnet_id = "subnet-09b8b4f0570d0e3886" #specify appropriate subnet ID
      key_name = "aws_login" #specify appropriate key name
    }