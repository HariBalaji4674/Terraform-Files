variable "cidr_block" {
    default = "10.0.0.0/16"  
}
variable "enable_dns_hostnames" {
    default = true  
}
variable "enable_dns_support" {
    default = true  
}
variable "common_tags" {
     type = map
        default =  {
            Project = "Roboshop"
            terraform = "true"
            environment = "vpc-dev"
        } 
}
variable "vpc_tags" {
     type = map
        default =  {
            Name = "Roboshop"
               } 
}
variable "igw_tags" {
     type = map
        default =  {
            Name = "Roboshop"
 } 
}