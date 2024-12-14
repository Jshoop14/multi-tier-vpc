output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.subnets.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.subnets.private_subnet_id
}
