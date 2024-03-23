terraform {
  backend "s3" {
    bucket = "terraform-state78"
    key    = "testing/${ "env" }/state"
    region = "us-east-1"
  }
}
output "env" {
  value = var.env
}
variable "env" {}