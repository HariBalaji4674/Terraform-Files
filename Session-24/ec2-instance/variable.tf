variable "ami_id" {
    default = "ami-03265a0778a880afb"
}
variable "tags" {
    default = {
        Name = "First_Instance"
        Project = "Roboshop"
        Environment = "DEV"
    }
}
variable "instance_type" {
    default = "t2.micro"  
}