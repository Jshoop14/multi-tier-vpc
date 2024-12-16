# README for ALB Module

## Description

This module creates an Application Load Balancer (ALB) and its associated Target Group and Listener in AWS. It distributes incoming traffic across web servers in a public subnet.

## Inputs

| **Name**              | **Description**                                  | **Type**          | **Default** | **Required** |
|-----------------------|--------------------------------------------------|-------------------|-------------|-------------|
| `alb_name`            | Name of the Application Load Balancer           | `string`          | `null`      | Yes         |
| `vpc_id`              | The ID of the VPC where the ALB will be created | `string`          | `null`      | Yes         |
| `subnets`             | List of public subnet IDs for the ALB           | `list(string)`    | `[]`        | Yes         |
| `target_group_name`   | Name of the Target Group for the ALB            | `string`          | `null`      | Yes         |
| `alb_sg_id`           | Security Group ID for the ALB                   | `string`          | `null`      | Yes         |

## Outputs

| **Name**             | **Description**                                   |
|----------------------|---------------------------------------------------|
| `alb_dns_name`       | The DNS name of the Application Load Balancer     |
| `target_group_arn`   | The ARN of the Target Group                       |

## Usage

```hcl
module "alb" {
  source             = "./modules/alb"
  alb_name           = "MultiTierALB"
  vpc_id             = module.vpc.vpc_id
  subnets            = module.subnets.public_subnet_ids
  target_group_name  = "WebServerTargetGroup"
  alb_sg_id          = module.security_groups.web_sg_id
}
