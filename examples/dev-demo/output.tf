# output

output "aws_launch_configuration_ids" {
  value = module.asg.aws_launch_configuration_ids
}

output "aws_launch_template_ids" {
  value = module.asg.aws_launch_template_ids
}

output "aws_autoscaling_group_ids" {
  value = module.asg.aws_autoscaling_group_ids
}
