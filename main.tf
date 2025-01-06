terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Jeremys-Environment"

    workspaces {
      name = "multi-tier-vpc"
    }
  }
}

provider "aws" {
  access_key = "AKIA2UC3EPLOESFPOS7P"
  secret_key = "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"
  region     = var.region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}


module "subnets" {
  source             = "./modules/subnets"
  vpc_id             = module.vpc.vpc_id
  public_cidr        = var.public_subnet_cidr
  private_cidr       = var.private_subnet_cidr
  availability_zones = var.availability_zones
  public_name        = "PublicSubnet"
  private_name       = "PrivateSubnet"
}

module "internet_gateway" {
  source   = "./modules/internet_gateway"
  vpc_id   = module.vpc.vpc_id
  igw_name = "MainInternetGateway"
}

module "route_table" {
  source           = "./modules/route_table"
  vpc_id           = module.vpc.vpc_id
  gateway_id       = module.internet_gateway.gateway_id
  public_subnet_id = module.subnets.public_subnet_ids[0]
  route_table_name = "PublicRouteTable"
}

module "security_groups" {
  source      = "./modules/security_groups"
  vpc_id      = module.vpc.vpc_id
  web_sg_name = var.web_sg_name
}

module "bastion_host" {
  source           = "./modules/bastion_host"
  bastion_ami      = var.bastion_ami
  instance_type    = var.instance_type
  public_subnet_id = module.subnets.public_subnet_ids[0]
  key_name         = var.key_name
  bastion_name     = "BastionHost"
  bastion_sg_name  = "BastionSecurityGroup"
  vpc_id           = module.vpc.vpc_id
  allowed_ssh_ips  = var.allowed_ssh_ips
}

module "web_servers" {
  source            = "./modules/web_server"
  web_server_ami    = var.web_server_ami
  instance_type     = var.instance_type
  public_subnet_id  = module.subnets.public_subnet_ids[0]
  security_group_id = module.security_groups.web_sg_id
  key_name          = var.key_name
  instance_count    = 2
}

module "alb" {
  source            = "./modules/alb"
  alb_name          = var.alb_name
  vpc_id            = module.vpc.vpc_id
  subnets           = module.subnets.public_subnet_ids
  target_group_name = var.target_group_name
  alb_sg_id         = module.security_groups.web_sg_id
}

module "asg" {
  source            = "./modules/asg"
  asg_name          = "WebServerASG" # Provide a value for ASG name
  web_server_ami    = var.web_server_ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = module.security_groups.web_sg_id
  subnet_ids        = module.subnets.public_subnet_ids
  max_size          = 3
  min_size          = 1
  desired_capacity  = 2
}

# module "monitoring" {
#   source              = "./modules/monitoring"
#   cpu_alarm_name      = var.cpu_alarm_name
#   cpu_threshold       = var.cpu_threshold
#   sns_topic_arn       = var.sns_topic_arn
#   alb_log_bucket_name = var.alb_log_bucket_name
#   asg_name            = var.asg_name
# }


