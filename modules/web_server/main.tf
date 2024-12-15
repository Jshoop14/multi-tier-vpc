resource "aws_instance" "web_server" {
  count                       = var.instance_count
  ami                         = var.web_server_ami
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.security_group_id]

  user_data = <<-EOT
                #!/bin/bash
                apt update -y
                apt install -y nginx
                systemctl start nginx
                systemctl enable nginx
                echo "Welcome to the Web Server" > /var/www/html/index.html
              EOT

  tags = {
    Name = "WebServer-${count.index + 1}"
  }
}
