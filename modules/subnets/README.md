# README for Subnets Module

## Description
This module creates public and private subnets within a specified VPC.

## Inputs

| Name              | Description                          | Type   | Default | Required |
|-------------------|--------------------------------------|--------|---------|----------|
| `vpc_id`          | The ID of the VPC                   | string | -       | Yes      |
| `public_cidr`     | CIDR block for the public subnet     | string | -       | Yes      |
| `private_cidr`    | CIDR block for the private subnet    | string | -       | Yes      |
| `availability_zone` | The availability zone for subnets  | string | -       | Yes      |
| `public_name`     | Name tag for the public subnet       | string | -       | Yes      |
| `private_name`    | Name tag for the private subnet      | string | -       | Yes      |

## Outputs

| Name               | Description                          |
|--------------------|--------------------------------------|
| `public_subnet_id` | The ID of the public subnet          |
| `private_subnet_id` | The ID of the private subnet         |

## Usage

```hcl
module "subnets" {
  source           = "./modules/subnets"
  vpc_id           = var.vpc_id
  public_cidr      = var.public_cidr
  private_cidr     = var.private_cidr
  availability_zone = var.availability_zone
  public_name      = var.public_name
  private_name     = var.private_name
}
