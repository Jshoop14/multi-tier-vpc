variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "subnets" {
  description = "Subnets to associate with the ALB"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security Group ID for the ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the ALB"
  type        = string
}

variable "target_group_name" {
  description = "Name of the Target Group for web servers"
  type        = string
}
