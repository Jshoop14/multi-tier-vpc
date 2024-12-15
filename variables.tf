variable "region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnets"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "public_name" {
  description = "Name tag for the public subnet"
  type        = string
}

variable "private_name" {
  description = "Name tag for the private subnet"
  type        = string
}

variable "igw_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Name tag for the public route table"
  type        = string
}

variable "web_sg_name" {
  description = "Name of the web server security group"
  type        = string
}

variable "bastion_ami" {
  description = "AMI for the bastion host"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the bastion host"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair to access the bastion host"
  type        = string
}

variable "allowed_ssh_ips" {
  description = "List of trusted IPs allowed to SSH into the bastion host"
  type        = list(string)
}


