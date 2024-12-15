# Web Server Module

This module is designed to provision and configure web servers in the VPC.

## Features

- Creates EC2 instances for web servers.
- Associates the instances with a specified security group.
- Configures the instances in the public subnet.

## Input Variables

| Variable Name        | Description                            | Type   | Default        | Required |
|----------------------|----------------------------------------|--------|----------------|----------|
| `web_server_ami`    | AMI ID for the web servers             | string | n/a            | yes      |
| `instance_type`     | Instance type for the web servers      | string | n/a            | yes      |
| `key_name`          | Key pair name for SSH access           | string | n/a            | yes      |
| `vpc_security_group_ids` | List of security group IDs for the web servers | list(string) | n/a  | yes      |
| `subnet_id`         | Subnet ID where the web servers will be launched | string | n/a  | yes      |

## Outputs

| Output Name    | Description                              |
|----------------|------------------------------------------|
| `web_server_ids` | List of IDs of the created web server instances |

## Example Usage

```hcl
module "web_servers" {
  source                = "./modules/web_server"
  web_server_ami        = "ami-0453ec754f44f9a4a"
  instance_type         = "t2.micro"
  key_name              = "your-key-pair-name"
  vpc_security_group_ids = ["sg-0123456789abcdef0"]
  subnet_id             = "subnet-0123456789abcdef0"
}
```

## Notes

- Ensure the provided AMI ID is valid for the specified AWS region.
- The key pair specified by `key_name` must already exist in your AWS account.
- This module assumes that the security group allows appropriate ingress and egress rules for the web servers.
