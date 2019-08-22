# terraform-aws-asg

## usage

```terraform
module "bastion" {
  source = "github.com/nalbam/terraform-aws-asg/modules/asg"

  region = var.region
  city   = var.city
  stage  = var.stage
  name   = var.name
  suffix = var.suffix

  vpc_id = var.vpc_id

  subnet_ids = var.subnet_ids

  launch_configuration_enable = true
  launch_template_enable      = false
  launch_each_subnet          = false

  associate_public_ip_address = true

  instance_type = "t2.micro"

  user_data = data.template_file.setup.rendered

  volume_type = "gp2"
  volume_size = "8"

  min = "1"
  max = "1"

  on_demand_base = "0"
  on_demand_rate = "0"

  key_name = "nalbam-seoul"

  tags = [
    {
      key                 = "Type"
      value               = "bastion"
      propagate_at_launch = true
    },
  ]
}
```
