 terraform {
   backend "s3" {
     bucket = "bucket-to-store-states"
     region = "ap-southeast-2"
     key = "ruth/terraform.tfstate"
    encrypt = true
    dynamodb_table = "terraform-lock"
   }
 }