resource "aws_instance" "name" {
  ami = lookup(var.cloud_ami , var.region_aws)
  instance_type = var.vm_type
  key_name = aws_key_pair.sshkeypair.key_name
  }
resource "aws_key_pair" "sshkeypair" {
  key_name = "chinmay"
  public_key = file("chinmay.pub")
  }
