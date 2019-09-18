# security group

resource "aws_security_group" "worker" {
  name = "${var.name}"

  vpc_id = var.vpc_id

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = true
  }

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.sg_ingress_sg
    content {
      from_port       = ingress.from_port
      to_port         = ingress.to_port
      protocol        = ingress.protocol
      security_groups = [ingress.security_groups]
    }
  }

  dynamic "ingress" {
    for_each = var.sg_ingress_cidr
    content {
      from_port   = ingress.from_port
      to_port     = ingress.to_port
      protocol    = ingress.protocol
      cidr_blocks = [ingress.cidr_blocks]
    }
  }

  tags = {
    Name = "${var.name}"
  }
}
