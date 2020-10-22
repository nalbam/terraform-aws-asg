# locals

locals {
  asg_count = var.launch_each_subnet ? length(var.subnet_ids) : 1
}

locals {
  tags = merge(
    var.tags,
    {
      "Name" = var.name
    },
  )

  asg_tags = [
    for item in keys(local.tags):
    map(
      "key", item,
      "value", element(values(local.tags), index(keys(local.tags), item)),
      "propagate_at_launch", true,
    )
  ]
}
