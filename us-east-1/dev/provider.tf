terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "< 4.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "< 2"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    region       = var.region
    environment  = var.environment
    product_name = var.product_name
    provisioner  = "terraform"
  }
}

provider "time" { }
