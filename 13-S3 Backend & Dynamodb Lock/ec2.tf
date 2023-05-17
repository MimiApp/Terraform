# Below is the Data Sources Block
data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

output "amiid" {
  value = data.aws_ami.app_ami.id
}


# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami           = "data.aws_ami.app_ami.id"
  instance_type = "t2.micro"
  tags = {
    Name = "backend_test"
  }
}

