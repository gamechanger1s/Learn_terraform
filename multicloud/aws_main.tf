resource "aws_instance" "web" {
  ami           = "ami-0c768662cc797cd75"
  instance_type = var.x

  tags = {
    Name = "HelloWorld"
  }
}