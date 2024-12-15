resource "aws_instance" "bastion" {
  ami                         = var.bastion_ami
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = true

  # Use the security group's ID as a list
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]

  tags = {
    Name = var.bastion_name
  }
}

resource "aws_security_group" "bastion_sg" {
  name        = var.bastion_sg_name
  description = "Security group for bastion host"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH from trusted IPs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ssh_ips
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.bastion_sg_name
  }
}


