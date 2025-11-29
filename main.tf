provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "sw_sg" {
  name = "sw_sg"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "all_traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "static_website" {
  ami                    = "ami-0fa91bc90632c73c9"  # Ubuntu 22.04 LTS
  key_name               = var.key_name
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sw_sg.id]

  

  tags = {
    Name = "static_website"
  }
}