resource "aws_iam_instance_profile" "fsx_instance_profile" {
  name = var.instance_profile_name
  role = aws_iam_role.fsx_role.name
}

resource "aws_instance" "fsx_instance" {
  count                  = var.ec2_instance_count
  ami                    = var.ami_id  
  instance_type          = var.instance_type  
  iam_instance_profile   = aws_iam_instance_profile.fsx_instance_profile.name
  key_name               = var.key_name
  subnet_id              = var.subnet_ids[count.index % length(var.subnet_ids)]
  vpc_security_group_ids = [aws_security_group.fsx_sg.id]
 

  user_data = <<-EOF
    <powershell>
    $secpasswd = ConvertTo-SecureString "${var.ad_password}" -AsPlainText -Force
    $domaincreds = New-Object System.Management.Automation.PSCredential ("Admin", $secpasswd)
    New-SmbGlobalMapping -RemotePath "\\${aws_fsx_windows_file_system.windows_fsx.dns_name}\share" -Credential $domaincreds -LocalPath Z:
    </powershell>
    <persist>true</persist>
  EOF
}
