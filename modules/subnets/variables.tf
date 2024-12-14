variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "public_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_cidr" {
  description = "CIDR block for the private subnet"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
}

variable "public_name" {
  description = "Name tag for the public subnet"
}

variable "private_name" {
  description = "Name tag for the private subnet"
}

