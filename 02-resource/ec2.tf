resource "aws_instance" "test" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
}