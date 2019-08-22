# variable

variable "region" {
  description = "The region to deploy the cluster in, e.g: us-east-1"
}

variable "city" {
  description = "City Name of the cluster, e.g: virginia"
}

variable "stage" {
  description = "Stage Name of the cluster, e.g: dev"
}

variable "name" {
  description = "Name of the cluster, e.g: demo"
}

variable "suffix" {
  description = "Name of the cluster, e.g: eks"
}

variable "vpc_id" {
  description = "The VPC ID."
  default     = ""
}

variable "subnet_ids" {
  description = "List of Subnet Ids"
  type        = list(string)
  default     = []
}

variable "launch_configuration_enable" {
  default = true
}

variable "launch_template_enable" {
  default = false
}

variable "launch_each_subnet" {
  default = false
}

variable "associate_public_ip_address" {
  default = false
}

variable "ami_id" {
  description = "AMI ID of the instance, e.g: ami-000000"
  default     = ""
}

variable "instance_type" {
  default = "m5.large"
}

variable "mixed_instances" {
  type    = list(string)
  default = []
}

variable "volume_type" {
  default = "gp2"
}

variable "volume_size" {
  default = "8"
}

variable "min" {
  default = "1"
}

variable "max" {
  default = "5"
}

variable "on_demand_base" {
  default = "1"
}

variable "on_demand_rate" {
  default = "30"
}

variable "key_name" {
  default = ""
}

variable "key_path" {
  default = ""
}

variable "user_data" {
  default = ""
}
