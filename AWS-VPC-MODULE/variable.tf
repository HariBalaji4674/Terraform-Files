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
    default = {}
    type = map 
}
variable "vpc_tags" {
    default = {} # This tags are optional
    type = map 
}
variable "igw_tags" {
    default = {} # This tags are optional
    type = map 
}
