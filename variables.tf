variable "aws_region" {
  default = "eu-north-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  default = "ami-0fa91bc90632c73c9"
}

variable "key_name" {
  default = "jenkins"
}

variable "jarvis_repo_url" {
  default = ""
}

variable "sw_sg" {
    default = "sw_sg"
  
}