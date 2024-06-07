resource "aws_instance" "ec2" {
  for_each = var.instance_types
  ami           = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = each.key
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
variable "instance_types" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    backend = {
      instance_type = "t3.micro"
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}