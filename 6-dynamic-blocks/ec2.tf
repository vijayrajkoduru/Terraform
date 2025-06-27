resource "aws_instance" "project" {
  count                  = length(var.instances)
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.Hacking.id]
  instance_type          = var.environment == "dev" ? "t3.micro" : "t3.small"

  tags = {
    Name        = var.instances[count.index]
    environment = var.environment
  }
}

resource "aws_security_group" "Hacking" {
  name = "Hacking"

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value["from_port"]
      to_port     = ingress_ports["to_port"]
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "project"
    environment = var.environment


  }
}