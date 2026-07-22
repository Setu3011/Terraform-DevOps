locals {

  environment = terraform.workspace

  common_tags = {

    Environment = local.environment
    Project     = "Terraform Workspace Demo"
    ManagedBy   = "Terraform"

  }

}