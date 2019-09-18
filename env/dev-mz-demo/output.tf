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
