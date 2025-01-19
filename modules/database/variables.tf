variable "db_instance_name" {
  description = "Name of the RDS instance"
  type        = string
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "username" {
  description = "Master username for the database"
  type        = string
}

variable "password" {
  description = "Master password for the database"
  type        = string
  sensitive   = true
}

variable "engine" {
  description = "Database engine (e.g., mysql, postgres)"
  type        = string
}

variable "engine_version" {
  description = "Version of the database engine"
  type        = string
}

variable "instance_class" {
  description = "Instance type for the database"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
}

variable "max_allocated_storage" {
  description = "Maximum storage in GB (for autoscaling)"
  type        = number
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group"
  type        = string
}

variable "subnet_group_name" {
  description = "Name of the DB subnet group"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for the database"
  type        = list(string)
}

variable "db_sg_id" {
  description = "Security group ID for the database"
  type        = string
}
