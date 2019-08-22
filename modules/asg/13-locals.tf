# locals

locals {
  full_name = "${var.city}-${var.stage}-${var.name}-${var.suffix}"

  asg_count = var.launch_each_subnet ? length(var.subnet_ids) : 1
}

locals {
  worker_tags = [
    {
      key                 = "Name"
      value               = local.full_name
      propagate_at_launch = true
    },
  ]
}
