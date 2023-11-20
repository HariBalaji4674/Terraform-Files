resource "aws_instance" "Count_index" {
    count = 10
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
    tags = {
      Name = var.instance_names[count.index]
    }
  
}