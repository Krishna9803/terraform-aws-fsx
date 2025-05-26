variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "environment" {
  description = "The environment name (e.g., dev, test, prod)"
  type        = string
}

variable "ad_name" {
  description = "The name of the AWS Managed Microsoft AD domain (e.g., corp.example.com)"
  type        = string
}

variable "ad_password" {
  description = "The password for the AWS Managed Microsoft AD administrator"
  type        = string
  sensitive   = true
}

variable "instance_profile_name" {
  description = "The name for the IAM instance profile"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 Windows instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type (e.g., t3.medium)"
  type        = string
}

variable "key_name" {
  description = "The key pair name to use for the EC2 instance"
  type        = string
}

variable "ssm_document_name" {
  description = "The name for the SSM document"
  type        = string
}

variable "role_name" {
  description = "The name for the IAM role"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where resources will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for deployment (at least 2 for Multi-AZ FSx)"
  type        = list(string)
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
  default     = ["10.0.0.0/16"]
}

variable "ec2_instance_count" {
  description = "Number of ec2 instances"
  type = number
  default = 2
}