provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "sample_instance" {
    ami= "ami-080660c9757080771"
  instance_type = "t2.micro"
  subnet_id = "subnet-0db4bf9fff0d69b9b"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "bucket-to-store-states"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}