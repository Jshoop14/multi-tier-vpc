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

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
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
  description = "Instance type for the bastion host and web servers"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair to access the bastion host and web servers"
  type        = string
}

variable "allowed_ssh_ips" {
  description = "List of trusted IPs allowed to SSH into the bastion host"
  type        = list(string)
}

variable "web_server_ami" {
  description = "AMI ID for the web servers"
  type        = string
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "MultiTierALB"
}

variable "target_group_name" {
  description = "Name of the Target Group for web servers"
  type        = string
  default     = "WebServerTargetGroup"
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
}

variable "desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
}

variable "sns_topic_arn" {
  description = "ARN for the SNS topic to send CloudWatch alarms"
  type        = string
}

variable "cpu_alarm_name" {
  description = "Name for the CloudWatch CPU alarm"
  type        = string
}

variable "cpu_threshold" {
  description = "Threshold percentage for CPU utilization"
  type        = number
}

variable "alb_log_bucket_name" {
  description = "Name of the S3 bucket to store ALB access logs"
  type        = string
}

variable "alarm_action_arn" {
  description = "ARN of the SNS topic for alarm actions"
  type        = string
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group to monitor"
  type        = string
}





