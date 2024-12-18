data "aws_lb" "existing_alb" {
  name = "MultiTierALB"
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = var.cpu_alarm_name
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = var.cpu_threshold
  dimensions = {
    AutoScalingGroupName = var.asg_name
  }
  actions_enabled = true
  alarm_actions   = [var.sns_topic_arn]
}

resource "aws_s3_bucket" "alb_logs" {
  bucket = var.alb_log_bucket_name

  force_destroy = true

  tags = {
    Name = var.alb_log_bucket_name
  }
}


