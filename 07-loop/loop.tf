#resource "null_resource" "test" {
#  count = 10
#}
resource "null_resource" "test" {
  for_each = var.colors-code
}

variable "colors-code" {
  default = {
    red = 31
    green = 32
    yellow = 33
    blue = 34
    magenta = 35
    cyan = 36
  }
}