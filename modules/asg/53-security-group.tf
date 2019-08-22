# worker security group

resource "aws_security_group" "worker" {
  name        = "${local.full_name}"
  description = "Security group for all worker nodes in the cluster"

  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "${local.full_name}"
  }
}

resource "aws_security_group_rule" "worker-ingress-ssh" {
  description       = "Allow workstation to communicate with the cluster API Server"
  security_group_id = aws_security_group.worker.id
  cidr_blocks       = var.allow_ip_address
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  type              = "ingress"
}
