variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
}

variable "public_name" {
  description = "Name tag for the public subnet"
  type        = string
}

variable "private_name" {
  description = "Name tag for the private subnet"
  type        = string
}


