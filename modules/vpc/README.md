# VPC Module

This module creates a VPC in AWS with DNS support enabled.

## Inputs

| Name      | Description                   | Type   | Default     | Required |
|-----------|-------------------------------|--------|-------------|----------|
| vpc_cidr  | CIDR block for the VPC        | string | `"10.0.0.0/16"` | no       |
| vpc_name  | Name tag for the VPC resource | string | `"MyVPC"`       | no       |

## Outputs

| Name   | Description          |
|--------|----------------------|
| vpc_id | The ID of the VPC.   |

## Usage

```hcl
module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "ProductionVPC"
}
