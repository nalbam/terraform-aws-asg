# output

output "iam_role_name" {
  value = aws_iam_role.worker.name
}

output "security_group_id" {
  value = aws_security_group.worker.id
}
