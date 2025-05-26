module "fsx" {
  source = "./modules/fsx"

  ad_name                = var.ad_name
  ad_password            = var.ad_password

  vpc_id                 = var.vpc_id
  subnet_ids             = var.subnet_ids
  allowed_cidr_blocks    = var.allowed_cidr_blocks

  fsx_deployment_type    = var.fsx_deployment_type
  fsx_storage_capacity   = var.fsx_storage_capacity
  fsx_throughput         = var.fsx_throughput

  instance_profile_name  = var.instance_profile_name
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  role_name              = var.role_name

  ssm_document_name      = var.ssm_document_name


  environment            = var.environment
}

