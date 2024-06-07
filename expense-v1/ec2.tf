resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "mysql"
  }
}

variable "ami" {
  default = "ami-031d574cddc5bb371"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "security_groups" {
  default = ["sg-06080f8fcec874b2f"]
}