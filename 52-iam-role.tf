# iam role

# resource "aws_iam_role" "worker" {
#   name = var.name

#   assume_role_policy = <<POLICY
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "ec2.amazonaws.com"
#       },
#       "Action": "sts:AssumeRole"
#     }
#   ]
# }
# POLICY

# }

resource "aws_iam_instance_profile" "worker" {
  name = var.name
  role = var.role_name
}
