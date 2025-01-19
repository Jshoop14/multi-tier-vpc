variable "web_sg_name" {
  description = "Name of the web server security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

#variable "db_sg_name" {
  #description = "Name of the database security group"
  #type        = string
#}


