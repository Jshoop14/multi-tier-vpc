output "cpu_alarm_arn" {
  description = "ARN of the CPU CloudWatch Alarm"
  value       = aws_cloudwatch_metric_alarm.cpu_alarm.arn
}

output "alb_log_bucket" {
  description = "Name of the S3 bucket for ALB access logs"
  value       = aws_s3_bucket.alb_logs.bucket
}

