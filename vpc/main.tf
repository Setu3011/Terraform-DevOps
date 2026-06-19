# Configure AWS Provider
provider "aws" {
  region = "eu-north-1"
}

# Create VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "my-vpc"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }

  # Ignore manual tag changes
  lifecycle {
    ignore_changes = [tags]
  }
}