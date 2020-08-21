# iam role

resource "aws_iam_instance_profile" "worker" {
  name = var.name
  role = var.role_name
}
