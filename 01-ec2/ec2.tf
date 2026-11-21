resource "aws_instance" "web" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.small"
  tags = {
    Name = "Terraform-Linux-Instance"
  }

}

resource "aws_instance" "main" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"
  tags = {
    Name = "Terraform-Linux-2"
  }
}