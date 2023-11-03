module "vpc" {
  source = "../MODULE-DEVELOPER"
  cidr_block = var.cidr_block
  project_name = var.project_name
}