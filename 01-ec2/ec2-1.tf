resource "aws_instance" "roboshop-mongodb-terraform" {
  instance_type          = "t3.micro"
  ami                    = "ami-0055977a6e828a4f4"
  vpc_security_group_ids = [aws_security_group.roboshop-mongodb-terraform.id]
  tags = {
    Name = "roboshop-mongodb"
  }
}

resource "aws_security_group" "roboshop-mongodb-terraform" {
  name        = "roboshop-mongodb-terraform"
  description = "Allow all instances"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "roboshop-mongodb"
  }
}