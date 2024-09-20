# consultar documentação no https://registry.terraform.io
# Browser Provider (AWS, Azure, GCP)
# Use Provider


terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.23.1"
        }
    }
}

provider "aws" {
    # Configuration option
    region = "us-east-1"  
}