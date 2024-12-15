output "web_server_ids" {
  description = "IDs of the web server instances"
  value       = aws_instance.web_server[*].id
}

output "web_server_public_ips" {
  description = "Public IPs of the web server instances"
  value       = aws_instance.web_server[*].public_ip
}
