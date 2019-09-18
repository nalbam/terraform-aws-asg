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
      from_port       = ingress.value
      to_port         = ingress.value
      protocol        = ingress.value
      security_groups = [ingress.value]
    }
  }

  dynamic "ingress" {
    for_each = var.sg_ingress_cidr
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = ingress.value
      cidr_blocks = [ingress.value]
    }
  }

  tags = {
    Name = "${var.name}"
  }
}
