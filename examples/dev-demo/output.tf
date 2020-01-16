# output

output "iam_role_arn" {
  value = module.asg.iam_role_arn
}

output "iam_role_name" {
  value = module.asg.iam_role_name
}

output "security_group_id" {
  value = module.asg.security_group_id
}

output "aws_launch_configuration_ids" {
  value = module.asg.aws_launch_configuration_ids
}

output "aws_launch_template_ids" {
  value = module.asg.aws_launch_template_ids
}

output "aws_autoscaling_group_ids" {
  value = module.asg.aws_autoscaling_group_ids
}
