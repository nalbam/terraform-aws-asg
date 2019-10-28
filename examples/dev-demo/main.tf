# asg

terraform {
  backend "s3" {
    region = "ap-northeast-2"
    bucket = "terraform-nalbam-seoul"
    key    = "asg-demo.tfstate"
    # encrypt        = true
    # dynamodb_table = "terraform-resource-lock"
  }
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.region
}

module "asg" {
  source = "../../modules/asg"

  name = "${var.name}-worker"

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  subnet_ids = data.terraform_remote_state.vpc.outputs.public_subnet_ids

  launch_configuration_enable = var.launch_configuration_enable
  launch_template_enable      = var.launch_template_enable
  launch_each_subnet          = var.launch_each_subnet

  associate_public_ip_address = var.associate_public_ip_address

  ami_id = var.ami_id

  instance_type = var.instance_type

  mixed_instances = var.mixed_instances

  user_data = var.user_data

  volume_type = var.volume_type
  volume_size = var.volume_size

  min = var.min
  max = var.max

  on_demand_base = var.on_demand_base
  on_demand_rate = var.on_demand_rate

  key_name = var.key_name
  key_path = var.key_path

  tags = [
    {
      key                 = "Name"
      value               = "${var.name}-worker"
      propagate_at_launch = true
    },
    {
      key                 = "KubernetesCluster"
      value               = var.name
      propagate_at_launch = true
    },
    {
      key                 = "kubernetes.io/cluster/${var.name}"
      value               = "owned"
      propagate_at_launch = true
    },
    {
      key                 = "k8s.io/cluster-autoscaler/${var.name}"
      value               = "owned"
      propagate_at_launch = true
    },
    {
      key                 = "k8s.io/cluster-autoscaler/enabled"
      value               = "true"
      propagate_at_launch = true
    },
  ]
}
