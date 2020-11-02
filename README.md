# terraform-aws-asg

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami\_id | n/a | `string` | `""` | no |
| associate\_public\_ip\_address | n/a | `bool` | `false` | no |
| ebs\_optimized | n/a | `bool` | `true` | no |
| enable\_monitoring | n/a | `bool` | `true` | no |
| instance\_type | n/a | `string` | `"t2.micro"` | no |
| key\_name | n/a | `string` | `""` | no |
| key\_path | n/a | `string` | `""` | no |
| launch\_configuration\_enable | n/a | `bool` | `true` | no |
| launch\_each\_subnet | n/a | `bool` | `false` | no |
| launch\_template\_enable | n/a | `bool` | `false` | no |
| max | n/a | `string` | `"5"` | no |
| min | n/a | `string` | `"1"` | no |
| mixed\_instances | n/a | `list(string)` | `[]` | no |
| name | Name of the cluster, e.g: seoul-dev-demo | `any` | n/a | yes |
| on\_demand\_base | n/a | `string` | `"1"` | no |
| on\_demand\_rate | n/a | `string` | `"30"` | no |
| role\_name | n/a | `string` | `""` | no |
| security\_groups | n/a | `list(string)` | `[]` | no |
| subnet\_ids | n/a | `list(string)` | `[]` | no |
| tags | n/a | `map(string)` | `{}` | no |
| target\_group\_arns | n/a | `list(string)` | `[]` | no |
| user\_data | n/a | `string` | `""` | no |
| volume\_size | n/a | `string` | `"8"` | no |
| volume\_type | n/a | `string` | `"gp2"` | no |
| vpc\_id | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_autoscaling\_group\_ids | n/a |
| aws\_launch\_configuration\_ids | n/a |
| aws\_launch\_template\_ids | n/a |
