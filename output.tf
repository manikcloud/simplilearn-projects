
output "key_name" {
  value       = aws_key_pair.deployer1.key_name
  description = "key name"
}

output "instance_id" {
  value       = aws_instance.amzn-linux.id
  description = "Instance id"
}