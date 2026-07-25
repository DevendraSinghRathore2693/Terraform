provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-test" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t3.micro" 
}

resource "aws_security_group" "my_security_group" {
  name        = "my-security-group"
  description = "My security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
