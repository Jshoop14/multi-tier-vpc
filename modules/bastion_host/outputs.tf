output "bastion_id" {
  description = "The ID of the bastion host instance"
  value       = aws_instance.bastion.id
}

output "bastion_sg_id" {
  description = "The ID of the bastion host security group"
  value       = aws_security_group.bastion_sg.id
}
