stack {
  name        = "S3"
  description = "S3"
  id          = "c03ba8a4-acd6-44eb-843e-680f82e2bc5e"
}

globals {
  aws_provider_version = "4.27.0"
  region     = "ap-northeast-1"
  access_key = "<your_access>"
  secret_key = "<your_secret>"
}

generate_hcl "provider.tf" {
  content {
    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = global.aws_provider_version
        }
      }
    }
    provider "aws" {
      region     = global.aws_region
      access_key = global.aws_access_key
      secret_key = global.aws_secret_key
    }
  }
}

generate_hcl "main.tf" {
  content {
    resource "aws_s3_bucket" "infraSity" {
      acl = "private"
      versioning {
        enabled = true
      }
    }
  }
}