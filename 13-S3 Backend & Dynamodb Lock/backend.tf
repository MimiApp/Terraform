# Below is Backend block
terraform {
  backend "s3" {
    bucket         = "emidiobucket"
    key            = "backend/dev/terraform.tfstate"
    region         = "us-east-1"
    profile        = "default"
    dynamodb_table = "terraform_table"
  }
}
