# README for Subnets Module

## Description

This module creates public and private subnets within a specified VPC across multiple availability zones. The subnets are automatically calculated using `cidrsubnet` to ensure valid ranges.

## Inputs

| **Name**              | **Description**                              | **Type**          | **Default** | **Required** |
|-----------------------|----------------------------------------------|-------------------|-------------|-------------|
| `vpc_id`             | The ID of the VPC where subnets will be created | `string`          | `null`      | Yes         |
| `public_cidr`        | CIDR block for the public subnet             | `string`          | `null`      | Yes         |
| `private_cidr`       | CIDR block for the private subnet            | `string`          | `null`      | Yes         |
| `availability_zones` | List of availability zones for the subnets   | `list(string)`    | `[]`        | Yes         |
| `public_name`        | Name tag for the public subnet               | `string`          | `null`      | Yes         |
| `private_name`       | Name tag for the private subnet              | `string`          | `null`      | Yes         |

## Outputs

| **Name**               | **Description**                            |
|------------------------|--------------------------------------------|
| `public_subnet_ids`    | List of IDs of the public subnets          |
| `private_subnet_ids`   | List of IDs of the private subnets         |

## Usage

```hcl
module "subnets" {
  source              = "./modules/subnets"
  vpc_id              = module.vpc.vpc_id
  public_cidr         = "10.0.1.0/24"
  private_cidr        = "10.0.2.0/24"
  availability_zones  = ["us-east-1a", "us-east-1b"]
  public_name         = "PublicSubnet"
  private_name        = "PrivateSubnet"
}

