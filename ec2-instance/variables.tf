variable "region_aws" {
  default = "ap-south-1"
  description = "this is region"
  
}
variable "cloud_ami" {
  type = map
  default = {
    ap-south-1 = "ami-0c768662cc797cd75"
    us-east-1 = "ami-02396cdd13e9a1257"
    us-east-2 = "ami-0578f2b35d0328762"

  }
  }
variable "vm_type" {
  default = "t2.micro"
  description = "virtual machine configuration"
  }
variable "cloud_sg" {
  type = list
  default = ["sgc-1","sgc-2"]
  
  }
  variable "a_key" {}
  variable "s_key" {}