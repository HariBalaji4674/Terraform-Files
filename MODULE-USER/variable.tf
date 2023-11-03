variable "project_name" {
  default = "roboshop"
}
variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "common_tags" {
  default = {
    project = "roboshop"
    terraform = "true"
  }
}
variable "vpc_tags" {
  default = {
    Environment = "VPC-MAIN"
  }
}
variable "igw_tags" {
  default = {
    Environment = "Igw-Main"
  }
}