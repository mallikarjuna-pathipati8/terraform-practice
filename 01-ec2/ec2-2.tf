resource "aws_instance" "roboshop-redis" {
  instance_type          = "t3.micro"
  ami                    = "ami-0055977a6e828a4f4"
  vpc_security_group_ids = [aws_security_group.roboshop-redis.id]
  tags = {
    Name = "roboshop-redis"
  }
}

resource "aws_security_group" "roboshop-redis" {
  name        = "robo-redis"
  description = "Allow all traffic"
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
    Name = "roboshop-redis"
  }
}