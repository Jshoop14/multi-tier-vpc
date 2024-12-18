variable "asg_name" {
  description = "Name of the Auto Scaling Group to monitor"
  type        = string
}

variable "cpu_alarm_name" {
  description = "Name for the CloudWatch CPU alarm"
  type        = string
}

variable "cpu_threshold" {
  description = "CPU utilization threshold for the alarm"
  type        = number
  default     = 75
}

variable "alarm_action_arn" {
  description = "ARN of the SNS topic for alarm notifications"
  type        = string
}

variable "alb_log_bucket_name" {
  description = "Name of the S3 bucket for ALB access logs"
  type        = string
}

variable "alb_name" {
  description = "Name of the ALB"
  type        = string
}

variable "alb_sg_id" {
  description = "ID of the ALB security group"
  type        = string
}

variable "subnet_ids" {
  description = "List of public subnet IDs for the ALB"
  type        = list(string)
}

variable "sns_topic_arn" {
  description = "The ARN of the SNS topic for alarm notifications"
  type        = string
}
