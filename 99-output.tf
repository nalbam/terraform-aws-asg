# output

output "iam_role_arn" {
  value = aws_iam_role.worker.arn
}

output "iam_role_name" {
  value = aws_iam_role.worker.name
}

output "security_group_id" {
  value = aws_security_group.worker.id
}

output "aws_launch_configuration_ids" {
  value = aws_launch_configuration.worker.*.id
}

output "aws_launch_template_ids" {
  value = concat(aws_launch_template.worker-spot.*.id, aws_launch_template.worker-mixed.*.id)
}

output "aws_autoscaling_group_ids" {
  value = concat(aws_autoscaling_group.worker.*.id, aws_autoscaling_group.worker-spot.*.id, aws_autoscaling_group.worker-mixed.*.id)
}
