resource "aws_instance" "ec2instance" {
  ami               = "ami-02396cdd13e9a1257"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "linux-keypair"
  subnet_id         = ""
  user_data_base64  = ""
  ebs_block_device {

  }
  security_groups = ["value"]

  tags = {
    Name      = "server1-tf"
    Createdby = "Dev"
    Owner     = "Emidio"
  }
}
