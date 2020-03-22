#----------------------------------------------------------
# My Terraform
#
# Global Variables in Remote State on S3
#
# Made by Alfred Meshcheryakov
#----------------------------------------------------------
provider "aws" {
  region = "ca-central-1"
}

terraform {
  backend "s3" {
    bucket = "denis-astahov-project-kgb-terraform-state"
    key    = "globalvars/terraform.tfstate"
    region = "us-east-1"
  }
}

#==================================================

output "company_name" {
  value = "ANDESA Soft International"
}

output "owner" {
  value = "Alfred Meshcheryakov"
}

output "tags" {
  value = {
    Project    = "Assembly-2020"
    CostCenter = "R&D"
    Country    = "Canada"
  }
}
