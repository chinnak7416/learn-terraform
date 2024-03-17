# Declare the variable with value
variable "x" {
  default = 100
}

# Declare the variable without value
#variable "y" {}
# this tye of approach is interactive approach is not good for gocd not ask any values by manually so don't use

output "x" {
  value = var.x
}

variable "y_list" {
  default = [1,2,3]
}

output "y" {
  value = var.y_list
}

variable "z_map" {
  default = {
    x = 10
    y = 20
  }
}

output "z" {
  value = var.z_map
}