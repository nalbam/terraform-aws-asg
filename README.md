# terraform-aws-asg

## usage
```
module "sample" {
  source = "git::https://github.com/nalbam/terraform-aws-asg.git"
  region = "${var.region}"

  name = "sample"

  key_name = "${var.key_name}"

  vpc_zone_identifier = [
    "subnet-abcde012", "subnet-bcde012a"
  ]
  security_groups = [
    "sg-edcd9784", "sg-edcd9785"
  ]

  load_balancers = [
    "${module.elb.this_elb_id}"
  ]

  user_data = "runuser -l ec2-user -c 'curl -s toast.sh/install-v3 | bash'"

  tags = [
    {
      key = "spot-enabled"
      value = "true"
      propagate_at_launch = false
    }
  ]
}
```

## reference
* https://github.com/terraform-aws-modules/terraform-aws-autoscaling
