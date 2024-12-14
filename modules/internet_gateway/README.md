# README for Internet Gateway Module

## Description
This module creates an Internet Gateway and attaches it to the specified VPC.

---

## Inputs

| Name       | Description              | Type   | Default | Required |
|------------|--------------------------|--------|---------|----------|
| `vpc_id`   | ID of the VPC            | string | -       | Yes      |
| `igw_name` | Name of the Internet Gateway | string | -       | Yes      |

---

## Outputs

| Name         | Description                     |
|--------------|---------------------------------|
| `gateway_id` | The ID of the Internet Gateway |

---

## Usage

```hcl
module "internet_gateway" {
  source    = "./modules/internet_gateway"
  vpc_id    = var.vpc_id
  igw_name  = "MainInternetGateway"
}
