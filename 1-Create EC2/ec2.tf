# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami           = "ami-09988af04120b3591"
  instance_type = "t2.micro"
  tags = {
    Name = "test"
  }
}


# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region = "us-east-1"
  profile = "default"
}
