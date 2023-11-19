resource "aws_instance" "first" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
}
resource "aws_security_group" "roboshop_group" {
  
}