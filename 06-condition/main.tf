# Condition in terraform is all about choosing the value

variable "number" {}
output "number" {
  value = var.number > 10 ? "Number is greater than 10" : "Number is less then or equal to 10"
}