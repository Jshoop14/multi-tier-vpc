output "db_endpoint" {
  description = "Endpoint of the database"
  value       = aws_db_instance.main.endpoint
}

output "db_instance_id" {
  description = "ID of the RDS instance"
  value       = aws_db_instance.main.id
}
