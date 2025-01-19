# Multi-Tier VPC Terraform Project

## Overview
This project demonstrates the creation and management of a multi-tier VPC infrastructure using Terraform. It includes essential components such as a VPC, subnets, security groups, an Application Load Balancer (ALB), an Auto Scaling Group (ASG), and optional monitoring through CloudWatch.

## Features
- **VPC**: A Virtual Private Cloud with customizable CIDR block and DNS support.
- **Subnets**: Public and private subnets spread across multiple availability zones.
- **Security Groups**: Configured for web servers, bastion host, and ALB.
- **Application Load Balancer**: Distributes traffic to web servers.
- **Auto Scaling Group**: Ensures high availability of web servers.
- **Monitoring (Optional)**: CloudWatch alarms and S3 bucket for ALB access logs.

## Requirements
- Terraform v1.10.3
- AWS account
- AWS credentials configured (Access Key and Secret Key)

## File Structure
```
multi-tier-vpc/
├── main.tf                # Root Terraform configuration
├── variables.tf           # Root variable definitions
├── terraform.tfvars       # Input values for variables
├── modules/
│   ├── vpc/               # VPC module
│   ├── subnets/           # Subnets module
│   ├── security_groups/   # Security Groups module
│   ├── internet_gateway/  # Internet Gateway module
│   ├── route_table/       # Route Table module
│   ├── alb/               # Application Load Balancer module
│   ├── asg/               # Auto Scaling Group module
│   └── monitoring/        # Monitoring module (Optional)
```

## Instructions

### Step 1: Initialize Terraform
Run the following command to initialize Terraform and its modules:
```bash
terraform init
```

### Step 2: Validate Configuration
Validate the Terraform configuration:
```bash
terraform validate
```

### Step 3: Plan the Infrastructure
Generate a plan to preview the changes Terraform will make:
```bash
terraform plan
```

### Step 4: Apply the Configuration
Apply the configuration to create the infrastructure:
```bash
terraform apply
```

### Step 5: Monitoring (Optional)
- Uncomment the monitoring module in `main.tf`.
- Add the required ARN values for the SNS topic and alarm action in `terraform.tfvars`.
- Re-run `terraform init`, `terraform validate`, and `terraform apply` to enable monitoring.

### Step 6: Destroy Infrastructure
To avoid incurring unnecessary costs, destroy the infrastructure when it's no longer needed:
```bash
terraform destroy
```

## Notes on Monitoring
- Monitoring includes a CloudWatch alarm to track CPU utilization.
- An S3 bucket is used to store ALB access logs.
- Testing the CloudWatch alarm involved running CPU-intensive commands on web server instances to simulate high usage.

## Key Benefits of This Project
- **Portability**: Easily deployable across different environments using Terraform.
- **Scalability**: Leverages AWS services to handle varying workloads.
- **Automation**: Fully automated infrastructure provisioning and configuration.
- **Flexibility**: Optional modules, like monitoring, can be toggled based on requirements.

## Future Enhancements
- Add support for additional AWS services, such as RDS or Elasticache.
- Include more granular monitoring metrics, such as memory and disk usage.
- Create detailed dashboards in CloudWatch.

## Acknowledgements
This project was built as part of a portfolio to demonstrate proficiency in Infrastructure as Code (IaC) using Terraform and AWS.
