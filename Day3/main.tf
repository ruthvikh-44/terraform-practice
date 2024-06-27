provider "aws" {
  region = "ap-southeast-2"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-080660c9757080771"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-0db4bf9fff0d69b9b"
}