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
  default = "ami-05f020f5935e52dc4"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "security_groups" {
  default = ["sg-00d3e3d7744a86ad7"]
}