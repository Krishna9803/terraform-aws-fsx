variable "environment" {
  description = "The environment name (e.g., dev, test, prod)"
  type        = string
  default     = "test"
}

variable "ad_name" {
  description = "The name of the AWS Managed Microsoft AD domain (e.g., corp.example.com)"
  type        = string
  default = "test-ad.local"
}

variable "ad_password" {
  description = "The password for the AWS Managed Microsoft AD administrator"
  type        = string
  sensitive   = true
  default     = "TestPassword123!"
}

variable "instance_profile_name" {
  description = "The name for the IAM instance profile"
  type        = string
  default     = "test-fsx-ad"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 Windows instance"
  type        = string
  default     = "ami-0fa71268a899c2733"
}

variable "instance_type" {
  description = "The EC2 instance type (e.g., t3.medium)"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The key pair name to use for the EC2 instance"
  type        = string
  default     = null
}

variable "ssm_document_name" {
  description = "The name for the SSM document"
  type        = string
  default     = "test-ssm-doc"
}

variable "role_name" {
  description = "The name for the IAM role"
  type        = string
  default     = "test-fsx-role"
}

variable "vpc_id" {
  description = "The VPC ID where resources will be deployed"
  type        = string
  default = "vpc-0990134610dcbd6f7"
}

variable "subnet_ids" {
  description = "List of subnet IDs for deployment (at least 2 for Multi-AZ FSx)"
  type        = list(string)
  default     = ["subnet-0f2c2f27a585552f1", "subnet-0e4b6d06fa66ff474"]
}

variable "fsx_deployment_type" {
  description = "FSx deployment type (e.g., MULTI_AZ_1, SINGLE_AZ_2)"
  type        = string
  default     = "MULTI_AZ_1"
}

variable "fsx_storage_capacity" {
  description = "FSx storage capacity in GB (minimum 32 for Windows)"
  type        = number
  default     = 32
}

variable "fsx_throughput" {
  description = "FSx throughput capacity in MB/s"
  type        = number
  default     = 32
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed for SMB access"
  type        = list(string)
  default     = ["35.171.166.230/32"]
}
