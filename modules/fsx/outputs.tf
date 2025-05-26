output "fsx_dns_name" {
  description = "FSx Windows File System DNS name"
  value       = aws_fsx_windows_file_system.windows_fsx
}

output "ad_directory_id" {
  description = "Active Directory directory ID"
  value       = aws_directory_service_directory.fsx_ad.id
}

output "ec2_instance_ids" {
  description = "EC2 instance IDs"
  value       = aws_instance.fsx_instance[*].id
}

output "fsx_sg_id" {
  description = "FSx security group ID"
  value       = aws_security_group.fsx_sg.id
}
