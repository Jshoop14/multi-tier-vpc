# Security Group Module

This module creates a security group designed to allow web and administrative traffic to a specified VPC.

## Resources Created

- **AWS Security Group**: Allows ingress traffic for HTTP (port 80) and SSH (port 22), and permits all egress traffic.

## Files

- `main.tf`: Contains the resource definition for the security group.
- `variables.tf`: Defines the input variables for the module.
- `outputs.tf`: Exposes the output values of the module for use in other parts of the configuration.

## Variables

### Input Variables

| Variable       | Description                                    | Type   |
|----------------|------------------------------------------------|--------|
| `web_sg_name`  | Name of the web server security group          | string |
| `vpc_id`       | The ID of the VPC where the security group will be created | string |

### Example Usage

```hcl
module "security_group" {
  source      = "./modules/security_group"
  web_sg_name = "WebServerSG"
  vpc_id      = module.vpc.vpc_id
}
```

## Outputs

| Output       | Description                       |
|--------------|-----------------------------------|
| `web_sg_id`  | The ID of the web security group  |

## Security Group Rules

### Ingress

- **HTTP Traffic**:
  - Protocol: TCP
  - Port Range: 80
  - Source: `0.0.0.0/0`

- **SSH Traffic**:
  - Protocol: TCP
  - Port Range: 22
  - Source: `0.0.0.0/0`

### Egress

- **All Traffic**:
  - Protocol: All
  - Port Range: All
  - Destination: `0.0.0.0/0`

## Tags

- **Name**: The `web_sg_name` variable is used to tag the security group for easy identification.
