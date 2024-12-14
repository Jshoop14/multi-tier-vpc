# README for Route Table Module

## Description
This module creates a public route table and associates it with a public subnet within the specified VPC.

---

## Inputs

| Name             | Description                     | Type   | Default | Required |
|------------------|---------------------------------|--------|---------|----------|
| `vpc_id`         | ID of the VPC                  | string | -       | Yes      |
| `gateway_id`     | ID of the Internet Gateway     | string | -       | Yes      |
| `public_subnet_id` | ID of the public subnet         | string | -       | Yes      |
| `route_table_name` | Name of the Route Table         | string | -       | Yes      |

---

## Outputs

| Name            | Description                  |
|-----------------|------------------------------|
| `route_table_id` | The ID of the Route Table |

---

## Usage

```hcl
module "route_table" {
  source            = "./modules/route_table"
  vpc_id            = var.vpc_id
  gateway_id        = var.gateway_id
  public_subnet_id  = var.public_subnet_id
  route_table_name  = "PublicRouteTable"
}
