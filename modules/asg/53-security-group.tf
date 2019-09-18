# security group

resource "random_pet" "worker" {
  length = 1

  keepers = {
    name = "${var.launch_configuration_enable}-${var.launch_template_enable}-${var.launch_each_subnet}"
  }
}

resource "aws_security_group" "worker" {
  name = "${var.name}-${random_pet.worker.id}"

  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-${random_pet.worker.id}"
  }
}
