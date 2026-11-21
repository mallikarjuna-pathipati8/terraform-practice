resource "aws_instance" "variable" {
  instance_type          = var.instance_type
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.variable.id]
  tags = {
    Name = "${var.project}-${var.environment}"
  }

}

resource "aws_security_group" "variable" {
  name        = "variable"
  description = "allow all traffic"
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr
  }
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr
  }
  tags = {
    Name = "${var.project}-${var.environment}"
  }
}