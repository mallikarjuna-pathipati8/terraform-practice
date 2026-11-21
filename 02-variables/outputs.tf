output "aws_instance_var" {
  value = aws_instance.variable.id
}

output "aws_sg_group_var" {
  value = aws_security_group.variable.id
}