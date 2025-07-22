resource "aws_instance" "terra" {
  ami           = "ami-0b32d400456908bf9"
  instance_type = "c7i-flex.large"
  security_groups = [aws_security_group.snpparth124082024.name]
  key_name = aws_key_pair.key_pair.key_name

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "snpparth124082024" {
  name        = "security group using snpparth124082024"
  description = "security group using snpparth124082024"
  vpc_id      = "vpc-0e7f77fa918c90171"

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   }

    ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "snp24082024"
  }
}
