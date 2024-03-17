resource "aws_instance" "test" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = var.instance_type
  tags = {
    Name = var.Name
  }
}

variable "Name" {}
variable "instance_type" {}
