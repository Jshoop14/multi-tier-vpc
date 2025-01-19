resource "aws_security_group" "web_sg" {
  name        = var.web_sg_name
  description = "Allow web traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.web_sg_name
  }
}

#resource "aws_security_group" "db_sg" {
  #name        = "DatabaseSecurityGroup"
  #description = "Allow access to the database"
  #vpc_id      = var.vpc_id

  #ingress {
    #description     = "Allow MySQL from web servers"
    #from_port       = 3306
    #to_port         = 3306
    #protocol        = "tcp"
    #security_groups = [aws_security_group.web_sg.id]
  #}

  #egress {
    #description = "Allow all outbound traffic"
    #from_port   = 0
    #to_port     = 0
    #protocol    = "-1"
    #cidr_blocks = ["0.0.0.0/0"]
  #}

  #tags = {
    #Name = "DatabaseSecurityGroup"
  #}
#}

