resource "aws_directory_service_directory" "fsx_ad" {
  name     = var.ad_name
  password = var.ad_password
  edition  = "Standard"
  type     = "MicrosoftAD"

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_ids
  }

  tags = {
    Project     = "Test"
    Environment = var.environment
  }
}
