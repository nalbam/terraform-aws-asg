# variable

variable "region" {
  default = "ap-northeast-2"
}

variable "name" {
  default = "seoul-dev-demo-asg"
}

variable "vpc_id" {
  default = "vpc-025ad1e9d1cb3c27d"
}

variable "subnet_ids" {
  default = [
    "subnet-09a6bcc0e50e97446",
    "subnet-0bf8251e3c5ea6635",
    "subnet-0c599871d06e90acf",
  ]
}

variable "launch_configuration_enable" {
  default = false
}

variable "launch_template_enable" {
  default = true
}

variable "launch_each_subnet" {
  default = false
}

variable "associate_public_ip_address" {
  default = false
}

variable "ami_id" {
  default = ""
}

variable "instance_type" {
  default = "m5.large"
}

variable "mixed_instances" {
  default = ["c5.large", "r5.large"]
}

variable "user_data" {
  default = ""
}

variable "volume_type" {
  default = "gp2"
}

variable "volume_size" {
  default = "32"
}

variable "min" {
  default = "1"
}

variable "max" {
  default = "5"
}

variable "on_demand_base" {
  default = "0"
}

variable "on_demand_rate" {
  default = "0"
}

variable "key_name" {
  default = "nalbam-seoul"
}

variable "key_path" {
  default = ""
}

data "aws_caller_identity" "current" {
}
