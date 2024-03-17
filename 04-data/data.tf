data "aws_security_group" "selected" {
  Name = "allow-all"
}
output "sg" {
  value = data.aws_security_group.selected
}