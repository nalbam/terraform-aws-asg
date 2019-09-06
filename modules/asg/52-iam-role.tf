# iam role

resource "aws_iam_role" "worker" {
  name = "${local.full_name}"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY

}

resource "aws_iam_instance_profile" "worker" {
  name = "${local.full_name}"
  role = aws_iam_role.worker.name
}
