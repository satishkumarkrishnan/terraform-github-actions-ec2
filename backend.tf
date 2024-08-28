terraform {
  backend "s3" {
    bucket         = "bancslink-poc"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "dbstatelock"
  }
}