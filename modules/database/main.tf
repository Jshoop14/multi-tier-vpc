resource "aws_db_instance" "main" {
  allocated_storage       = var.allocated_storage
  max_allocated_storage   = var.max_allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  db_name                    = var.db_name
  username                = var.username
  password                = var.password
  parameter_group_name    = var.parameter_group_name
  publicly_accessible     = false
  db_subnet_group_name    = aws_db_subnet_group.main.name
  vpc_security_group_ids  = [var.db_sg_id]
  storage_encrypted       = true

  tags = {
    Name = var.db_instance_name
  }
}

resource "aws_db_subnet_group" "main" {
  name       = var.subnet_group_name
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = var.subnet_group_name
  }
}
