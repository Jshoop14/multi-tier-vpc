# Monitoring Module

This module sets up monitoring and logging for the Multi-Tier VPC architecture. It includes:

1. **CloudWatch Alarms**: Monitors CPU utilization for the Auto Scaling Group.
2. **ALB Access Logs**: Enables ALB logging to an S3 bucket.

## Inputs

| Variable            | Description                                 | Type        | Default |
|---------------------|---------------------------------------------|-------------|---------|
| `asg_name`          | Name of the Auto Scaling Group             | `string`    | n/a     |
| `cpu_alarm_name`    | Name for the CloudWatch CPU alarm           | `string`    | n/a     |
| `cpu_threshold`     | CPU utilization threshold                  | `number`    | `75`    |
| `alarm_action_arn`  | ARN for the SNS topic for alarms            | `string`    | n/a     |
| `alb_log_bucket_name` | Name of the S3 bucket for ALB logs         | `string`    | n/a     |
| `alb_name`          | Name of the ALB                            | `string`    | n/a     |
| `alb_sg_id`         | Security Group ID for the ALB              | `string`    | n/a     |
| `subnet_ids`        | List of public subnet IDs for the ALB      | `list(string)` | n/a   |

## Outputs

| Output             | Description                  |
|--------------------|------------------------------|
| `cpu_alarm_arn`    | ARN of the CloudWatch alarm  |
| `alb_log_bucket`   | Name of the ALB log bucket   |
