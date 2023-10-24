resource "aws_instance" "demo2" {
    count = 10
    ami = "ami-03265a0778a880afb"
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.instance_names[count.index]
    }
}