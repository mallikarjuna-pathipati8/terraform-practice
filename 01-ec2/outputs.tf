output "aws_instance_id" {
  value = aws_instance.web.id
}

output "aws_instance_id2" {
  value = aws_instance.main.id
}

output "aws_instance_roboshop-mongodb-terraform" {
  value = aws_instance.roboshop-mongodb-terraform.id
}
output "aws_instance_roboshop-redis" {
  value = aws_instance.roboshop-redis.id
}