# terraform.tfvars

# AWS Region
region = "us-east-1"

# VPC Configuration
vpc_cidr = "10.0.0.0/16"
vpc_name = "MultiTierVPC"

# Subnets Configuration
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
availability_zones  = ["us-east-1a", "us-east-1b"]
public_name         = "PublicSubnet"
private_name        = "PrivateSubnet"


# Internet Gateway Configuration
igw_name = "MainInternetGateway"

# Route Table Configuration
route_table_name = "PublicRouteTable"

# Security Group
web_sg_name = "WebServerSecurityGroup"

# Bastion Host
bastion_ami     = "ami-0453ec754f44f9a4a" # Replace with a valid AMI ID
instance_type   = "t2.micro"
key_name        = "bastion"
allowed_ssh_ips = ["203.0.113.0/24"] # Replace with your trusted IP range

#Web Server
web_server_ami = "ami-0453ec754f44f9a4a"

# ALB Configuration
alb_name          = "MultiTierALB"
target_group_name = "WebServerTargetGroup"

# ASG Configuration
max_size         = 3
min_size         = 1
desired_capacity = 2

# Monitoring Configuration
cpu_alarm_name      = "WebServerCPUAlarm"
cpu_threshold       = 75
sns_topic_arn       = "arn:aws:sns:us-east-1:730335574748:WebServerAlerts"
alb_log_bucket_name = "multi-tier-alb-logs"
alarm_action_arn    = "arn:aws:sns:us-east-1:730335574748:WebServerAlerts"
asg_name            = "WebServerASG"

# Database Configuration
#db_instance_name      = "MultiTierDB"
#db_name               = "mydb"
#username              = "admin"
#password              = "supersecurepassword123"
#engine                = "mysql"
#engine_version        = "8.0"
#instance_class        = "db.t3.micro"
#allocated_storage     = 20
#max_allocated_storage = 100
#parameter_group_name  = "default.mysql8.0"
#subnet_group_name     = "DBSubnetGroup"
#db_sg_name            = "DatabaseSecurityGroup"





