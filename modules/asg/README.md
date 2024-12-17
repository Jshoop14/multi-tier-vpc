# README for Auto Scaling Group (ASG) Module

## Description
This module provisions an **Auto Scaling Group (ASG)** with a specified number of EC2 instances. The instances are launched using a Launch Configuration and are automatically registered with the provided ALB Target Group.

## Inputs

| Name               | Description                                | Type           | Default | Required |
|--------------------|--------------------------------------------|----------------|---------|----------|
| `web_server_ami`   | AMI ID for the web servers                 | `string`       | n/a     | Yes      |
| `instance_type`    | Instance type for the web servers          | `string`       | n/a     | Yes      |
| `key_name`         | Key pair name for SSH access               | `string`       | n/a     | Yes      |
| `web_sg_id`        | Security Group ID for web servers          | `string`       | n/a     | Yes      |
| `target_group_arn` | ARN of the ALB Target Group                | `string`       | n/a     | Yes      |
| `subnets`          | List of subnet IDs for the ASG             | `list(string)` | n/a     | Yes      |
| `min_size`         | Minimum number of instances                | `number`       | n/a     | Yes      |
| `max_size`         | Maximum number of instances                | `number`       | n/a     | Yes      |
| `desired_capacity` | Desired number of instances                | `number`       | n/a     | Yes      |

## Outputs

| Name        | Description                      |
|-------------|----------------------------------|
| `asg_name`  | The name of the Auto Scaling Group |

## Usage

```hcl
module "asg" {
  source            = "./modules/asg"
  web_server_ami    = var.web_server_ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  web_sg_id         = module.security_groups.web_sg_id
  target_group_arn  = module.alb.target_group_arn
  subnets           = module.subnets.public_subnet_ids
  min_size          = 2
  max_size          = 4
  desired_capacity  = 2
}
