# locals

locals {
  full_name = var.name

  asg_count = var.launch_each_subnet ? length(var.subnet_ids) : 1
}

locals {
  worker_tags = concat(
    [
      {
        key                 = "Name"
        value               = local.full_name
        propagate_at_launch = true
      },
    ],
    var.tags,
  )
}
