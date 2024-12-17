variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "web_server_ami" {
  description = "AMI ID for the web server instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for web servers"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair for web servers"
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group for web servers"
  type        = string
}

variable "subnet_ids" {
  description = "List of public subnet IDs for the ASG"
  type        = list(string)
}

variable "max_size" {
  description = "Maximum number of instances in the ASG"
  type        = number
}

variable "min_size" {
  description = "Minimum number of instances in the ASG"
  type        = number
}

variable "desired_capacity" {
  description = "Desired number of instances in the ASG"
  type        = number
}

