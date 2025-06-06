## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_fsx"></a> [fsx](#module\_fsx) | ./modules/fsx | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ad_name"></a> [ad\_name](#input\_ad\_name) | The name of the AWS Managed Microsoft AD domain (e.g., corp.example.com) | `string` | `"test-ad.local"` | no |
| <a name="input_ad_password"></a> [ad\_password](#input\_ad\_password) | The password for the AWS Managed Microsoft AD administrator | `string` | `"TestPassword123!"` | no |
| <a name="input_allowed_cidr_blocks"></a> [allowed\_cidr\_blocks](#input\_allowed\_cidr\_blocks) | List of CIDR blocks allowed for SMB access | `list(string)` | <pre>[<br/>  "35.171.166.230/32[this is for test purpose, replace this with your instances' public ip address]"<br/>]</pre> | no |
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID for the EC2 Windows instance | `string` | `"ami-0fa71268a899c2733 (us-east-1 region)"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment name (e.g., dev, test, prod) | `string` | `"test"` | no |
| <a name="input_fsx_deployment_type"></a> [fsx\_deployment\_type](#input\_fsx\_deployment\_type) | FSx deployment type (e.g., MULTI\_AZ\_1, SINGLE\_AZ\_2) | `string` | `"MULTI_AZ_1"` | no |
| <a name="input_fsx_storage_capacity"></a> [fsx\_storage\_capacity](#input\_fsx\_storage\_capacity) | FSx storage capacity in GB (minimum 32 for Windows) | `number` | `32` | no |
| <a name="input_fsx_throughput"></a> [fsx\_throughput](#input\_fsx\_throughput) | FSx throughput capacity in MB/s | `number` | `32` | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | The name for the IAM instance profile | `string` | `"test-fsx-ad"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The EC2 instance type which has to be UEFI-Compatible (e.g., t3.medium) | `string` | `"t3.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The key pair name to use for the EC2 instance | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name for the IAM role | `string` | `"test-fsx-role"` | no |
| <a name="input_ssm_document_name"></a> [ssm\_document\_name](#input\_ssm\_document\_name) | The name for the SSM document | `string` | `"test-ssm-doc"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for deployment (at least 2 for Multi-AZ FSx) | `list(string)` | <pre>[<br/>  "[examples] <br/>subnet-0f2c2f27a585552f1",<br/>  "subnet-0e4b6d06fa66ff474"<br/>]</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID where resources will be deployed | `string` | `"Eg - vpc-0990134610dcbd6f7"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ad_directory_id"></a> [ad\_directory\_id](#output\_ad\_directory\_id) | Active Directory directory ID |
| <a name="output_ec2_instance_ids"></a> [ec2\_instance\_ids](#output\_ec2\_instance\_ids) | EC2 instance IDs |
| <a name="output_fsx_dns_name"></a> [fsx\_dns\_name](#output\_fsx\_dns\_name) | FSx Windows File System DNS name |
| <a name="output_fsx_sg_id"></a> [fsx\_sg\_id](#output\_fsx\_sg\_id) | FSx security group ID |
