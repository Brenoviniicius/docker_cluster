#Versão requirida para executar o código terraform
terraform {
  required_version = "1.9.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.0"
    }
  }
}

#Declarando o provedor cloud
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

