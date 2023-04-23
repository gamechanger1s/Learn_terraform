resource "aws_instance" "web" {
  ami             = "ami-0c768662cc797cd75"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "First_instance"
  }
}


resource "aws_security_group" "allow_tls" {
  name        = "checkkk"
  description = "Allow TLS inbound traffic"
  dynamic "ingress" {
    for_each = [22, 80, 443, 2703]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}


# creating ssh key 
resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = file("${path.module}/key.pub")
}

