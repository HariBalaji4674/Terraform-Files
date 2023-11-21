resource "aws_instance" "inst1" {
    for_each = var.inst_names
    ami = var.ami_id
    instance_type = each.value
    tags = {
        Name = each.key
    }
     
}