terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = "MultiTierVPC"
}

module "subnets" {
  source            = "./modules/subnets"
  vpc_id            = module.vpc.vpc_id
  public_cidr       = var.public_subnet_cidr
  private_cidr      = var.private_subnet_cidr
  availability_zone = var.availability_zone
  public_name       = "PublicSubnet"
  private_name      = "PrivateSubnet"
}


module "internet_gateway" {
  source   = "./modules/internet_gateway"
  vpc_id   = module.vpc.vpc_id
  igw_name = "MainInternetGateway"
}

module "route_table" {
  source              = "./modules/route_table"
  vpc_id              = module.vpc.vpc_id
  gateway_id          = module.internet_gateway.gateway_id
  public_subnet_id    = module.subnets.public_subnet_id
  route_table_name    = "PublicRouteTable"
}
