provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "ap-southeast-2"
  region = "ap-southeast-2"
}

resource "aws_instance" "exampleInstance1" {
  ami = "ami-080660c9757080771"
  instance_type = "t2.micro"
  subnet_id = "subnet-0db4bf9fff0d69b9b"
  provider = aws.ap-southeast-2
}

resource "aws_instance" "exampleInstance2" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id = "subnet-00b71baa524e67f8b"
  provider = aws.us-east-1
}