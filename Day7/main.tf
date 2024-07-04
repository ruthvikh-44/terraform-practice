provider "aws" {
  region = "ap-southeast-2"
}

provider "vault" {
  address = "http://3.106.208.50:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "e1f9d3da-ea74-04d0-b0d5-ca82f3772d6f"
      secret_id = "19b752c2-9f73-26f0-c634-829e9769cfd3"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-080660c9757080771"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}