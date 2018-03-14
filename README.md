# terraform-aws-asg

## usage
```
module "sample" {
  source = "git::https://gitlab.com/nalbam/terraform-aws-asg.git"
  region = "${var.region}"

  name = "sample"

  vpc_zone_identifier = [
    "subnet-abcde012", "subnet-bcde012a"
  ]

  security_groups = [
    "sg-edcd9784", "sg-edcd9785"
  ]

  tags = [
    {
      key = "spot-enabled"
      value = "true"
      propagate_at_launch = true
    }
  ]
}
```

## reference
* https://github.com/terraform-aws-modules/terraform-aws-autoscaling
