terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.63.0"
    }
  }
}
provider "aws" {
  region = var.region_aws
  access_key = var.a_key
  secret_key = var.s_key
  
}
