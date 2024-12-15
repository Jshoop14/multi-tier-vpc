variable "bastion_ami" {
  description = "AMI for the bastion host"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the bastion host"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet where the bastion host will be created"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair to access the bastion host"
  type        = string
}

variable "bastion_name" {
  description = "Name tag for the bastion host instance"
  type        = string
}

variable "bastion_sg_name" {
  description = "Name tag for the bastion host security group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the bastion host security group will be created"
  type        = string
}

variable "allowed_ssh_ips" {
  description = "List of trusted IPs allowed to SSH into the bastion host"
  type        = list(string)
}
