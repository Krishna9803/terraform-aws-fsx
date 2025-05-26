resource "aws_fsx_windows_file_system" "windows_fsx" {
  depends_on           = [aws_directory_service_directory.fsx_ad]
  deployment_type      = var.fsx_deployment_type
  storage_capacity     = var.fsx_storage_capacity
  throughput_capacity  = var.fsx_throughput
  subnet_ids           = var.subnet_ids
  preferred_subnet_id  = var.subnet_ids[0]
  security_group_ids   = [aws_security_group.fsx_sg.id]
  active_directory_id  = aws_directory_service_directory.fsx_ad.id

  tags = {
    Project     = "Test"
    Environment = "${var.environment}"
  }
}

resource "aws_security_group" "fsx_sg" {
  name        = "fsx-windows-sg"
  description = "Security group for FSx Windows File Server"
  vpc_id      = var.vpc_id

  ingress {
    description = "SMB Access"
    from_port   = 445
    to_port     = 445
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}