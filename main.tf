provider "aws" {
  region = "ap-northeast-1"
  profile = "dev"
}

resource "aws_instance" "example" {
  ami = "ami-0c1638aa346a43fe8"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}