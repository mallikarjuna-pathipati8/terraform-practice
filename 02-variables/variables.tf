# variable "variable name"{
#     type=string
#     default="test"
#     description="description"
# }

variable "ami_id" {
  type    = string
  default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "project" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

variable "from_port" {
  default = 0
}
variable "to_port" {
  default = 0
}
variable "cidr" {
  default = ["0.0.0.0/0"]
}