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
