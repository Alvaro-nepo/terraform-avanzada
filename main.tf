# main.tf

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  endpoint                    = "http://localhost:4566"
  s3_force_path_style         = true
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-localstack-bucket"
}
