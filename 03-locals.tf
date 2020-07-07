# locals

locals {
  asg_count = var.launch_each_subnet ? length(var.subnet_ids) : 1
}

locals {
  def_tags = {
    "Name" = var.name
  }

  merge_tags = merge(
    local.def_tags,
    var.tags,
  )

  tags = [
    for item in keys(local.merge_tags) :
    map(
      "key", item,
      "value", element(values(local.merge_tags), index(keys(local.merge_tags), item)),
      "propagate_at_launch", true,
    )
  ]
}
