output "fsx_dns_name" {
  description = "FSx Windows File System DNS name"
  value       = module.fsx.fsx_dns_name
}

output "ad_directory_id" {
  description = "Active Directory directory ID"
  value       = module.fsx.ad_directory_id
}

output "ec2_instance_ids" {
  description = "EC2 instance IDs"
  value       = module.fsx.ec2_instance_ids
}

output "fsx_sg_id" {
  description = "FSx security group ID"
  value       = module.fsx.fsx_sg_id
}
