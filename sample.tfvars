name = "sample"

vpc_zone_identifier = [
  "sub-sample",
]

security_groups = [
  "sg-sample",
]

health_check_type = "EC2"

tags = [
  {
    key                 = "spot-enabled"
    value               = "true"
    propagate_at_launch = true
  },
]
