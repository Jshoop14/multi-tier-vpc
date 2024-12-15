variable "web_server_ami" {
  description = "AMI ID for the web servers"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the web servers"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for the web servers"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the web servers"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "instance_count" {
  description = "Number of web server instances"
  type        = number
  default     = 1
}
